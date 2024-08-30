# GitHub Actions

- “GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline.” - docs.github.com

## Components of GitHub Actions

- Workflows
- Jobs
- Steps

## Workflows

- configurable automated process that will run one or more jobs
- defined using YAML syntax
- triggered by an event, manually, or scheduled 
- defined in `.github/workflows/<WORKFLOW-NAME>.yml`
- a repository can have multiple workflows each performing a different set of tasks
- workflows can reference other workflows

### Workflow Examples

- Performing static code analysis
- Running tests
- Building your application
- Deploying your application

## Jobs

- A set of steps defined in a workflow that is executed on the same runner. 
- steps are usually a shell script that will be executed or an action that will be run.
- steps are executed in order and are dependent on each other
- data can be shared between steps e.g. a step that builds your application followed by a step that tests the application that was built

## Actions

- custom application for the GitHub Actions platform that performs a complex but frequently repeated task
- use actions to reduce the amount of repetative code you write in your workflow files

## Runners

- server that runs your workflows when triggered
- each runner can run a single job at a time
- GitHub provides Linux, Windows, and MacOS runners
- can host your own runner
