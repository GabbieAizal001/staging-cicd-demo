While building and setting up this CI/CD pipeline, a major security risk I realized I could easily introduce was hardcoding sensitive credentials.

The Vulnerability:
If I had pasted my Docker Hub password, API tokens, or database keys directly into my Dockerfile or my ci-cd.yml workflow file, those secrets would be permanently saved right into my Git history. Anyone with access to my repository could easily read my code files and steal my credentials in plain text.

How I Fixed It:
To fix this, I made sure not to include any plain-text passwords in my code files. Instead, I securely stored my credentials inside GitHub Actions Secrets in my repository settings. Then, I configured my pipeline to inject them safely at runtime using GitHub's syntax (${{ secrets.DOCKER_PASSWORD }}). This keeps the actual values out of version control and automatically masks them so they never show up in the logs when the pipeline runs.
