# Development Container Image

<table style="width: 100%; border-style: none;">
<tr>
    <td style="width: 140px; text-align: center;">
        <a href="https://codespaces.new/patterned-designs/terraform-aws-codepipeline-terraform-executor">
            <img 
                width="128px"
                src="./images/logo.png"
                alt="devcontainers organization logo"/>
        </a>
    </td>
    <td>
        <strong>Development Container</strong><br />
        Spin up fresh, automated dev environments for each task, in the cloud, in seconds.<br />
        Looking to get started? <a href="https://codespaces.new/patterned-designs/terraform-aws-codepipeline-terraform-executor">Open in Codespaces</a>
    </td>
</tr>
</table>

A **development container** is a running [container](https://opencontainers.org/) with a defined runtime stack and opinionated configuration for toolchains. It allows for _reproducible_ full-featured development environments that can be be used to develop, test, or run an application.

This repository supports a development container image, which can be used within [supporting tools and services](https://containers.dev/supporting) of the Development Containers specification.

## Contents
 
- [`devcontainer.json`](devcontainer.json) - Defines the configuration of the development environment (JSON with Comments file)

## Common Questions

### What is a Development Container

Repositories often have complicated development environments that can take time to set up, which can make getting started challenging. The typical process involves following documentation that is composed of installation commands and _hoping_ that no errors occur. This way of setting up development environments can be time consuming, error prone, and may not replicate the configuration accurately to enable contribution to a project.

[Development Containers](https://containers.dev/) can be summarized as:

> A Development Container (or Dev Container for short) allows you to use a container as a full-featured development environment. It can be used to run an application, to separate tools, libraries, or runtimes needed for working with a codebase, and to aid in continuous integration and testing. Dev containers can be run locally or remotely, in a private or public cloud.

### How can I get started?

Click the button below to start a new development environment:

[![Open in GitHub Codespaces](./images/badge.svg)](https://codespaces.new/patterned-designs/terraform-aws-codepipeline-terraform-executor)

### What is a devcontainer.json file

The `devcontainer.json` file adheres to the [Development Container Specification](https://containers.dev/implementors/spec/) and is structured as a JSON file with comments. It is used for configuring any environment variables, tooling features, mounts and metadata for the container. These container setups are designed for simplicity, ease of creation, and reproducibility.

In these containerized environments, users can seamlessly develop applications, ensuring a consistency in build and test.

> A development container is a container in which a user can develop an application. Tools that want to implement this specification should provide a set of features/commands that give more flexibility to users and allow development containers to scale to large development groups.

> An environment is defined as a logical instance of one or more development containers, along with any needed side-car containers. An environment is based on one set of metadata that can be managed as a single unit. Users can create multiple environments from the same configuration metadata for different purposes.