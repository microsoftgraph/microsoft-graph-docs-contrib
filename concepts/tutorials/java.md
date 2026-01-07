---
title: Build Java apps with Microsoft Graph
description: In this tutorial, you build a Java app that uses Microsoft Entra ID for authentication and Microsoft Graph for retrieving data.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Build Java apps with Microsoft Graph

<!-- cSpell:ignore graphtutorial gradlew -->

This tutorial teaches you how to build a Java console app that uses the Microsoft Graph API to access data on behalf of a user.

> [!NOTE]
> To learn how to use Microsoft Graph to access data using app-only authentication, see this [app-only authentication tutorial](java-app-only.md).

In this tutorial, you will:

- [Get the signed-in user](/graph/api/user-get)
- [List the user's inbox messages](/graph/api/user-list-messages)
- [Send an email](/graph/api/user-sendmail)

> [!TIP]
> As an alternative to following this tutorial, you can download the completed code through the [quick start](https://developer.microsoft.com/graph/quick-start?state=option-java) tool, which automates app registration and configuration. The downloaded code works without any modifications required.
>
> You can also download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-java) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have the [Java SE Development Kit (JDK)](https://java.com/en/download/faq/develop.xml) and [Gradle](https://gradle.org/) installed on your development machine.

[!INCLUDE [account-requirements](includes/shared/account-requirements.md)]

> [!NOTE]
> This tutorial was written with OpenJDK version 17.0.2 and Gradle 7.4.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [user-auth-app-reg-steps](includes/shared/user-auth-app-reg-steps.md)]

## Create a Java console app

Create a basic Java console app.

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command to create a new Gradle project.

    ```Shell
    gradle init --dsl groovy --test-framework junit --type java-application --project-name graphtutorial --package graphtutorial
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

    :::code language="gradle" source="includes/java/src/user-auth/graphtutorial/app/build.gradle" id="DependenciesSnippet" highlight="7-8":::

1. Add the following to the end of **./app/build.gradle**.

    :::code language="gradle" source="includes/java/src/user-auth/graphtutorial/app/build.gradle" id="StandardInputSnippet":::

    The next time you build the project, Gradle will download those dependencies.

## Load application settings

Next, add the details of your app registration to the project.

1. Create a new directory named **graphtutorial** in the **./app/src/main/resources** directory.

1. Create a new file in the **./app/src/main/resources/graphtutorial** directory named **oAuth.properties**, and add the following text in that file.

    :::code language="ini" source="includes/java/src/user-auth/graphtutorial/app/src/main/resources/graphtutorial/oAuth.properties.example":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `app.clientId` | The client ID of your app registration |
    | `app.tenantId` | If you chose the option to only allow users in your organization to sign in, change this value to your tenant ID. Otherwise leave as `common`. |

    > [!IMPORTANT]
    > If you're using source control such as git, now would be a good time to exclude the **oAuth.properties** file from source control to avoid inadvertently leaking your app ID.

## Design the app

Continue by creating a simple console-based menu.

1. Open **./app/src/main/java/graphtutorial/App.java** and add the following `import` statements.

    :::code language="java" source="includes/java/src/user-auth/graphtutorial/app/src/main/java/graphtutorial/App.java" id="ImportSnippet":::

1. Replace the existing `main` function with the following.

    :::code language="java" source="includes/java/src/user-auth/graphtutorial/app/src/main/java/graphtutorial/App.java" id="MainSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```csharp
    private static void initializeGraph(Properties properties) {
        // TODO
    }

    private static void greetUser() {
        // TODO
    }

    private static void displayAccessToken() {
        // TODO
    }

    private static void listInbox() {
        // TODO
    }

    private static void sendMail() {
        // TODO
    }

    private static void makeGraphCall() {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

1. Delete **./app/src/test/java/graphtutorial/AppTest.java**.

## Next step

> [!div class="nextstepaction"]
> [Add user authentication](java-authentication.md)
