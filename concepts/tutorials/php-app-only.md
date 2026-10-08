---
title: Build PHP apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a PHP app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build PHP apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphapponlytutorial vlucas phpdotenv -->

This tutorial teaches you how to build a PHP console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](php.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-php/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [PHP](https://www.php.net/) and [Composer](https://getcomposer.org/) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with PHP version 8.1.5 and Composer version 2.3.5. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a PHP console app

Begin by initializing a new Composer project. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

```bash
composer init
```

Answer the prompts. You can accept the defaults for most questions, but respond `n` to the following questions:

```bash
Would you like to define your dependencies (require) interactively [yes]? n
Would you like to define your dev dependencies (require-dev) interactively [yes]? n
Add PSR-4 autoload mapping? Maps namespace "Microsoft\Graphapponlytutorial" to the entered relative path. [src/, n to skip]: n
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

Add the details of your app registration to the project.

1. Create a file in the root directory of your project named **.env** and add the following code.

    :::code language="ini" source="includes/php/src/app-auth/graphapponlytutorial/.env.example":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `CLIENT_ID`     | The client ID of your app registration |
    | `CLIENT_SECRET` | The client secret of your app registration |
    | `TENANT_ID`     | The tenant ID of your organization |

    > [!IMPORTANT]
    > If you're using source control such as git, now would be a good time to exclude the **.env** file from source control to avoid inadvertently leaking your app ID.

## Design the app

Create a console-based menu.

1. Create a file in the root directory of your project named **main.php**. Add the opening and closing PHP tags.

    ```php
    <?php
    ?>
    ```

1. Add the following code between the PHP tags.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/main.php" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file before the closing PHP tag. You implement them in later steps.

    ```php
    function initializeGraph(): void {
        // TODO
    }

    function displayAccessToken(): void {
        // TODO
    }

    function listUsers(): void {
        // TODO
    }

    function makeGraphCall(): void {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](php-app-only-authentication.md)
