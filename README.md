# Docker Cron
A simple Docker image with pre-configured cron and pre-installed bash.

## Usage
- At runtime all scripts in the /scripts directory will be marked as executable.
- You must give your scripts a shebang e.g. `#!/bin/bash` or `#!/bin/sh` otherwise they will not execute.

### Extending
Example on extending via Dockerfile (where ./daily is your bash script to run):

```Dockerfile
FROM ghcr.io/enchant97/docker-cron

    COPY ./daily /scripts/
```

### Scripts
- `/scripts/daily` `0 0 * * *` Daily at 00:00
- `/scripts/weekly` `0 0 * * 1` Weekly at 00:00
- `/scripts/monthly` `0 0 1 * *` Monthly at 00:00

### Environment
- Alpine 3.17
- pre-installed
  - bash
