package main

import (
	"fmt"
	"os"
	"regexp"

	"github.com/wspace/corpus/tools"
	"golang.org/x/sys/execabs"
)

func main() {
	projects, err := tools.ReadProjects()
	try(err)
	tools.SortProjectsByID(projects)

	var badURLs []*tools.Project
	for _, p := range projects {
		if p.ID == "" || len(p.Source) == 0 {
			continue
		}
		if _, err := os.Stat(p.ID); err == nil {
			continue
		}

		repo := getGitURL(p.Source[0])
		if repo == "" {
			badURLs = append(badURLs, p)
			continue
		}

		fmt.Printf("git submodule add %s %s\n", repo, p.ID)
		cmd := execabs.Command("git", "submodule", "add", repo, p.ID)
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		try(cmd.Run())
	}

	if len(badURLs) != 0 {
		fmt.Println("First source not a recognized repo for:")
		for _, p := range badURLs {
			fmt.Printf("- %s: %s\n", p.ID, p.Source[0])
		}
	}
}

var (
	github      = regexp.MustCompile(`^https://(?:gist\.)?github\.com/[^/]+/[^/]+$`)
	gitlab      = regexp.MustCompile(`^https://gitlab\.com/[^/]+/[^/]+$`)
	bitbucket   = regexp.MustCompile(`^https://bitbucket\.org/[^/]+/[^/]+$`)
	sourceforge = regexp.MustCompile(`^https://sourceforge\.net/projects/([^/]+)/$`)
)

func getGitURL(url string) string {
	if github.MatchString(url) || bitbucket.MatchString(url) {
		return url
	} else if gitlab.MatchString(url) {
		return url + ".git"
	} else if m := sourceforge.FindStringSubmatch(url); m != nil {
		return "https://git.code.sf.net/p/" + m[1] + "/code"
	}
	return ""
}

func try(err error) {
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
