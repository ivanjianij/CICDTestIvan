# CICDTestIvan

Simple Hello World backend using Spring Boot.

## Run

```bash
mvn spring-boot:run
```

Then open `http://localhost:8080/` to see:

```text
Hello World
```

## CI/CD

This repository now includes:

- GitHub Actions workflow at `.github/workflows/ci-cd.yml`
- AWS CodeBuild spec at `buildspec.yml`

### What the pipeline does

- On pull requests to `main`: builds and runs tests
- On pushes to `main`: builds, runs tests, and publishes the JAR as a workflow artifact
- Produces an AWS-ready build artifact that can be used by CodePipeline

### GitHub Actions

The workflow uses Maven to run:

```bash
mvn -B clean verify
```

### AWS CodePipeline

You do not need AWS CodeCommit if your source code is already in a Git repository such as GitHub.

You can configure AWS CodePipeline with:

1. Source: GitHub repository
2. Build: AWS CodeBuild using `buildspec.yml`
3. Deploy: your target service such as EC2, ECS, Elastic Beanstalk, or Lambda

The deploy stage is not wired yet because the target AWS service has not been chosen.
