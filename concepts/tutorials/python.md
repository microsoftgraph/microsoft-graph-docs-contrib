---
title: Build Python apps with Microsoft Graph
description: Build Python apps using Microsoft identity platform for authentication and Microsoft Graph for accessing data in Microsoft 365 (Office 365) or personal accounts.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Build Python apps with Microsoft Graph

<!-- cSpell:ignore graphtutorial asyncio -->

This tutorial teaches you how to build a Python console app that uses the Microsoft Graph API to access data on behalf of a user.

> [!NOTE]
> To learn how to use Microsoft Graph to access data using app-only authentication, see this [app-only authentication tutorial](python-app-only.md).

In this tutorial, you will:

- [Get the signed-in user](/graph/api/user-get)
- [List the user's inbox messages](/graph/api/user-list-messages)
- [Send an email](/graph/api/user-sendmail)

> [!TIP]
> As an alternative to following this tutorial, you can download the completed code through the [quick start](https://developer.microsoft.com/graph/quick-start?state=option-python) tool, which automates app registration and configuration. The downloaded code works without any modifications required.
>
> You can also download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-python) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [Python](https://www.python.org/) and [pip](https://pip.pypa.io/en/stable/) installed on your development machine.

[!INCLUDE [account-requirements](includes/shared/account-requirements.md)]

> [!NOTE]
> This tutorial was written with Python version 3.10.4 and pip version 20.0.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [user-auth-app-reg-steps](includes/shared/user-auth-app-reg-steps.md)]

## Create a Python console app

Begin by creating a new Python file.

1. Create a new file named **main.py** and add the following code.

    ```python
    print ('Hello world!')
    ```

1. Save the file and use the following command to run the file.

    ```bash
    python3 main.py
    ```

    If it works, the app should output `Hello world!`.

## Install dependencies

Before moving on, add dependencies that you use later.

- [Azure Identity client library for Python](https://github.com/Azure/azure-sdk-for-python/tree/main/sdk/identity/azure-identity) to authenticate the user and acquire access tokens.
- [Microsoft Graph SDK for Python (preview)](https://github.com/microsoftgraph/msgraph-sdk-python) to make calls to the Microsoft Graph.

To install the dependencies, run the following commands in your CLI.

```bash
python3 -m pip install azure-identity
python3 -m pip install msgraph-sdk
```

## Load application settings

Next, add the details of your app registration to the project.

1. Create a file in the same directory as **main.py** named **config.cfg** and add the following code.

    :::code language="ini" source="includes/python/src/user-auth/graphtutorial/config.cfg":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `tenantId` | If you chose the option to only allow users in your organization to sign in, change this value to your tenant ID. Otherwise leave as `common`. |

    > [!TIP]
    > Optionally, you can set these values in a separate file named **config.dev.cfg**.

## Design the app

Continue by creating a simple console-based menu.

1. Create a new file named **graph.py** and add the following code to that file.

    ```python
    # Temporary placeholder
    class Graph:
        def __init__(self, config):
            self.settings = config
    ```

    This code is a placeholder. You implement the `Graph` class in [the next article](python-authentication.md).

1. Open **main.py** and replace its entire contents with the following code.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```python
    async def greet_user(graph: Graph):
        # TODO
        return

    async def display_access_token(graph: Graph):
        # TODO
        return

    async def list_inbox(graph: Graph):
        # TODO
        return

    async def send_mail(graph: Graph):
        # TODO
        return

    async def make_graph_call(graph: Graph):
        # TODO
        return
    ```

1. Add the following line to call `main` at the end of the file.

    ```python
    # Run main
    asyncio.run(main())
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add user authentication](python-authentication.md)
