

## How to contribute


Create a GitHub issue: Before coding, propose your changes in a new issue.
Use the issue template: Fill out the provided form with details.
Discuss and get approval: Discuss your proposal within the issue and wait for assignment.
Work after assignment: Only start working once the issue is assigned to you.




### commit standards for the project
> we follow conventional commit closely with slight modification to suite or needs

https://www.conventionalcommits.org/en/v1.0.0/

```bash
<type>(<scope>): <imperative verb + short message>

- In response to (<issue number>)
- Short description of change
- Another brief change description
- Third change description

<optional> Note: Additional context if necessary.  
<when applicable> Breaking Changes: Explanation of what changed and its impact.
```



do very samll commit. once staged check git diff --staged make sure the diff make sence.

do not mix context. 
lets see for a task one commit should do one thing 

1. one commit for add funtion
2. one for formate file

never mix multiple changes in one commit 

funtion name should be discriptive.


make everting a funtion. 

keep the funtion short 

do not add buch of commnet, write self documenting code. 
only put commetn on complicated stuff.

------------------------------------------------------------------------------

https://flank.github.io/flank/pr_titles/


PR title using conventional commits
Introduction

The Conventional Commits specification is a lightweight convention on top of commit messages. It provides an easy set of rules for creating an explicit commit history; which makes it easier to write automated tools on top of.
Usage

Every PR which is not in draft mode should follow conventional commit convention for PR title. It allows us to generate release notes and avoid merge conflicts in release_notes.md file
PR title

Pull request title should be: <type>([optional scope]): <description>

where
<type> - one of following [optional scope] - additional information
<description> - description of pr
Type

    build - Changes that affect the build system or external dependencies (dependencies update)
    ci - Changes to our CI configuration files and scripts (basically directory .github/workflows)
    docs - Documentation only changes
    feat - A new feature
    fix - A bug fix
    chore - Changes which does not touch the code (ex. manual update of release notes). It will not generate release notes changes
    refactor - A code change that contains refactor
    style - Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
    test - Adding missing tests or correcting existing tests and also changes for our test app
    perf - A code change that improves performance (I do not think we will use it)

Examples

    feat: Add locales description command for ios and android -> https://github.com/Flank/flank/pull/969
    fix: rate limit exceeded -> https://github.com/Flank/flank/pull/919
    ci: Added leading V to version name -> https://github.com/Flank/flank/pull/980
    refactor: config entities and arguments -> https://github.com/Flank/flank/pull/831
    docs: Add secrets and vision doc -> https://github.com/Flank/flank/pull/922
    build: Disable Auto Doc Generation -> https://github.com/Flank/flank/pull/942
    test: added multi modules to test app -> https://github.com/Flank/flank/pull/857
    chore: Release v20.08.1 -> https://github.com/Flank/flank/pull/982


----------------------------

https://conventional-branch.github.io/
Conventional Branch 1.0.0

Summary

Conventional Branch refers to a structured and standardized naming convention for Git branches which aims to make branch more readable and actionable. We’ve suggested some branch prefixes you might want to use but you can also specify your own naming convention. A consistent naming convention makes it easier to identify branches by type.
Key Points

    Purpose-driven Branch Names: Each branch name clearly indicates its purpose, making it easy for all developers to understand what the branch is for.
    Integration with CI/CD: By using consistent branch names, it can help automated systems (like Continuous Integration/Continuous Deployment pipelines) to trigger specific actions based on the branch type (e.g., auto-deployment from release branches).
    Team Collaboration : It encourages collaboration within teams by making branch purpose explicit, reducing misunderstandings and making it easier for team members to switch between tasks without confusion.

Specification
Branch Naming Prefixes

The branch specification by describing with feature/, bugfix/, hotfix/, release/ and chore/ and it should be structured as follows:

<type>/<description>

    main: The main development branch (e.g., main, master, or develop)
    feature/: For new features (e.g., feature/add-login-page)
    bugfix/: For bug fixes (e.g., bugfix/fix-header-bug)
    hotfix/: For urgent fixes (e.g., hotfix/security-patch)
    release/: For branches preparing a release (e.g., release/v1.2.0)
    chore/: For non-code tasks like dependency, docs updates (e.g., chore/update-dependencies)

Basic Rules

    Lowercase and Hyphen-Separated: Always use lowercase letters, and separate words with hyphens. For example, feature/new-login or bugfix/header-styling.
    Alphanumeric and Hyphens Only: Use only lowercase letters (a-z), numbers (0-9), and hyphens. Avoid special characters like spaces, punctuation, and underscores.
    No Consecutive Hyphens: Ensure that hyphens are used singly, with no consecutive hyphens (e.g., feature/new-login, not feature/new--login).
    No Trailing Hyphens: Do not add a hyphen at the end of the branch name. For instance, use feature/new-login instead of feature/new-login-.
    Clear and Concise: Make branch names descriptive but concise. The name should clearly indicate the work being done.
    Include Jira (or Other Tool) Ticket Numbers: If applicable, include the ticket number from your project management tool to make tracking easier. For example, for a ticket T-123, the branch name could be feature/T-123-new-login.

Conclusion

    Clear Communication: The branch name alone provides a clear understanding of its purpose the code change.
    Automation-Friendly: Easily hooks into automation processes (e.g., different workflows for feature, release, etc.).
    Scalability: Works well in large teams where many developers are working on different tasks simultaneously.

In summary, conventional branch is designed to improve project organization, communication, and automation within Git workflows.
