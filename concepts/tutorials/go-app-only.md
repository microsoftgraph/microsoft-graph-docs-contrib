---
title: Build Go apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a Go app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build Go apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphhelper, graphapponlytutorial, joho, godotenv -->

This tutorial teaches you how to build a Go console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](go.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-go/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [Go](https://go.dev/) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with Go version 1.19.3. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a Go console app

Begin by initializing a new Go module using the [Go CLI](https://pkg.go.dev/cmd/go). Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

```bash
go mod init graphapponlytutorial
```

## Install dependencies

Before moving on, add dependencies that you use later.

- [Azure Identity Client Module for Go](https://github.com/Azure/azure-sdk-for-go/tree/main/sdk/azidentity) to authenticate the user and acquire access tokens.
- [Microsoft Graph SDK for Go](https://github.com/microsoftgraph/msgraph-sdk-go) to make calls to the Microsoft Graph.
- [GoDotEnv](https://github.com/joho/godotenv) for reading environment variables from .env files.

To install the dependencies, run the following commands in your CLI.

```bash
go get github.com/Azure/azure-sdk-for-go/sdk/azidentity
go get github.com/microsoftgraph/msgraph-sdk-go
go get github.com/joho/godotenv
```

## Load application settings

Add the details of your app registration to the project.

1. Create a file in the same directory as **go.mod** named **.env** and add the following code.

    :::code language="ini" source="includes/go/src/app-auth/graphapponlytutorial/.env":::

1. Update the values according to the following table.

    | Setting         | Value                                      |
    |-----------------|--------------------------------------------|
    | `CLIENT_ID`     | The client ID of your app registration     |
    | `CLIENT_SECRET` | The client secret of your app registration |
    | `TENANT_ID`     | The tenant ID of your organization         |

    > [!TIP]
    > Optionally, you can set these values in a separate file named **.env.local**.

## Design the app

Create a console-based menu.

1. Create a new directory in the same directory as **go.mod** named **graphhelper**.

1. Add a new file in the **graphhelper** directory named **graphhelper.go** and add the following code.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphhelper/graphhelper.go" id="GraphHelperSnippet":::

    This code creates a basic **GraphHelper** type that you extend in later sections to use Microsoft Graph.

1. Create a file in the same directory as **go.mod** named **graphapponlytutorial.go**. Add the following code.

    :::code language="go" source="includes/go/src/app-auth/graphapponlytutorial/graphapponlytutorial.go" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```go
    func initializeGraph(graphHelper *graphhelper.GraphHelper) {
        // TODO
    }

    func displayAccessToken(graphHelper *graphhelper.GraphHelper) {
        // TODO
    }

    func listUsers(graphHelper *graphhelper.GraphHelper) {
        // TODO
    }

    func makeGraphCall(graphHelper *graphhelper.GraphHelper) {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](go-app-only-authentication.md)
