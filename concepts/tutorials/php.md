---
title: Build PHP apps with Microsoft Graph
description: In this tutorial, you build a PHP app that uses Microsoft Entra ID for authentication and Microsoft Graph for retrieving data.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Build PHP apps with Microsoft Graph

<!-- cSpell:ignore graphtutorial vlucas phpdotenv -->

This tutorial teaches you how to build a PHP console app that uses the Microsoft Graph API to access data on behalf of a user.

> [!NOTE]
> To learn how to use Microsoft Graph to access data using app-only authentication, see this [app-only authentication tutorial](php-app-only.md).

In this tutorial, you will:

- [Get the signed-in user](/graph/api/user-get)
- [List the user's inbox messages](/graph/api/user-list-messages)
- [Send an email](/graph/api/user-sendmail)

> [!TIP]
> As an alternative to following this tutorial, you can download the completed code through the [quick start](https://developer.microsoft.com/graph/quick-start?state=option-php) tool, which automates app registration and configuration. The downloaded code works without any modifications required.
>
> You can also download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-php) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [PHP](https://www.php.net/) and [Composer](https://getcomposer.org/) installed on your development machine.

[!INCLUDE [account-requirements](includes/shared/account-requirements.md)]

> [!NOTE]
> This tutorial was written with PHP version 8.1.5 and Composer version 2.3.5. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [user-auth-app-reg-steps](includes/shared/user-auth-app-reg-steps.md)]

## Create a PHP console app

Begin by initializing a new Composer project. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

```bash
composer init
```

Answer the prompts. You can accept the defaults for most questions, but respond `n` to the following questions:

```bash
Would you like to define your dependencies (require) interactively [yes]? n
Would you like to define your dev dependencies (require-dev) interactively [yes]? n
Add PSR-4 autoload mapping? Maps namespace "Microsoft\Graphtutorial" to the entered relative path. [src/, n to skip]: n
```

## Install dependencies

Before moving on, add dependencies that you use later.

- [Microsoft Graph SDK for PHP](https://github.com/microsoftgraph/msgraph-sdk-php) to make calls to the Microsoft Graph.
- [vlucas/phpdotenv](https://github.com/vlucas/phpdotenv) for reading environment variables from .env files.

To install the dependencies, run the following command in your CLI.

```bash
composer require microsoft/microsoft-graph vlucas/phpdotenv
```

## Load application settings

Next, add the details of your app registration to the project.

1. Create a file in the root directory of your project named **.env** and add the following code.

    :::code language="ini" source="includes/php/src/user-auth/graphtutorial/.env.example":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `CLIENT_ID` | The client ID of your app registration |
    | `TENANT_ID` | If you chose the option to only allow users in your organization to sign in, change this value to your tenant ID. Otherwise leave as `common`. |

    > [!IMPORTANT]
    > If you're using source control such as git, now would be a good time to exclude the **.env** file from source control to avoid inadvertently leaking your app ID.

## Design the app

Continue by creating a simple console-based menu.

1. Create a file in the root directory of your project named **main.php**. Add the opening and closing PHP tags.

    ```php
    <?php
    ?>
    ```

1. Add the following code between the PHP tags.

    :::code language="php" source="includes/php/src/user-auth/graphtutorial/main.php" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file before the closing PHP tag. You implement them in later steps.

    ```php
    function initializeGraph(): void {
        // TODO
    }

    function greetUser(): void {
        // TODO
    }

    function displayAccessToken(): void {
        // TODO
    }

    function listInbox(): void {
        // TODO
    }

    function sendMail(): void {
        // TODO
    }

    function makeGraphCall(): void {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add user authentication](php-authentication.md)
