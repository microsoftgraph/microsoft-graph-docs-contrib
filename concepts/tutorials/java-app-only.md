---
title: Build Java apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a Java app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build Java apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphapponlytutorial gradlew -->

This tutorial teaches you how to build a Java console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](java.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-java/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have the [Java SE Development Kit (JDK)](https://java.com/en/download/faq/develop.xml) and [Gradle](https://gradle.org/) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with OpenJDK version 17.0.2 and Gradle 7.4.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a Java console app

Create a basic Java console app.

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command to create a new Gradle project.

    ```Shell
    gradle init --dsl groovy --test-framework junit --type java-application --project-name graphapponlytutorial --package graphapponlytutorial
    ```

1. Once the project is created, verify that it works by running the following command to run the app in your CLI.

    ```Shell
    ./gradlew --console plain run
    ```

    If it works, the app should output `Hello World.`.

## Install dependencies

Before moving on, add dependencies that you use later.

- [Azure Identity client library for Java](https://github.com/Azure/azure-sdk-for-java/tree/master/sdk/identity/azure-identity) to authenticate the user and acquire access tokens.
- [Microsoft Graph SDK for Java](https://github.com/microsoftgraph/msgraph-sdk-java) to make calls to the Microsoft Graph.

1. Open **./app/build.gradle**. Update the `dependencies` section to add those dependencies.

    :::code language="gradle" source="includes/java/src/app-auth/graphapponlytutorial/app/build.gradle" id="DependenciesSnippet" highlight="7-8":::

1. Add the following to the end of **./app/build.gradle**.

    :::code language="gradle" source="includes/java/src/app-auth/graphapponlytutorial/app/build.gradle" id="StandardInputSnippet":::

    The next time you build the project, Gradle will download those dependencies.

## Load application settings

Add the details of your app registration to the project.

1. Create a new directory named **graphapponlytutorial** in the **./app/src/main/resources** directory.

1. Create a new file in the **./app/src/main/resources/graphapponlytutorial** directory named **oAuth.properties**, and add the following text in that file.

    :::code language="ini" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/resources/graphapponlytutorial/oAuth.properties.example":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `app.clientId`     | The client ID of your app registration |
    | `app.tenantId`     | The tenant ID of your organization |
    | `app.clientSecret` | The client secret |

    > [!IMPORTANT]
    > If you're using source control such as git, now would be a good time to exclude the **oAuth.properties** file from source control to avoid inadvertently leaking your app ID.

## Design the app

Create a console-based menu.

1. Open **./app/src/main/java/graphapponlytutorial/App.java** and add the following `import` statements.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/App.java" id="ImportSnippet":::

1. Replace the existing `main` function with the following.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/App.java" id="MainSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```csharp
    private static void initializeGraph(Properties properties) {
        // TODO
    }

    private static void displayAccessToken() {
        // TODO
    }

    private static void listUsers() {
        // TODO
    }

    private static void makeGraphCall() {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

1. Delete **./app/src/test/java/graphapponlytutorial/AppTest.java**.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](java-app-only-authentication.md)
