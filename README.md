# Pull Request Filter Action

> Based off [this handy action](https://github.com/jessfraz/branch-cleanup-action)

Filter for a pull request which has been merged.

## Usage

```
workflow "Cool Workflow" {
  on = "pull_request"
  resolves = ["Awesome Action"]
}

action "Filter" {
  uses = "jonwinton/pr-filter-action@master"
}

action "Awesome Action" {
  needs = ["Filter"]
  uses = "actions/bin/sh@master"
  args = ["echo 'hi!'"]
}
```
