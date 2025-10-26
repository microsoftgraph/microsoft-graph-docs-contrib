---
title: Build Python apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a Python app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build Python apps with Microsoft Graph and app-only authentication

<!-- cSpell:ignore graphapponlytutorial asyncio -->

This tutorial teaches you how to build a Python console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](python.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-python/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [Python](https://www.python.org/) and [pip](https://pip.pypa.io/en/stable/) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with Python version 3.10.4 and pip version 20.0.2. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

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

Add the details of your app registration to the project.

1. Create a file in the same directory as **main.py** named **config.cfg** and add the following code.

    :::code language="ini" source="includes/python/src/app-auth/graphapponlytutorial/config.cfg":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `clientSecret` | The client secret of your app registration |
    | `tenantId` | The tenant ID of your organization |

    > [!TIP]
    > Optionally, you can set these values in a separate file named **config.dev.cfg**.

## Design the app

Create a console-based menu.

1. Create a new file named **graph.py** and add the following code to that file.

    ```python
    # Temporary placeholder
    class Graph:
        def __init__(self, config):
            self.settings = config
    ```

    This code is a placeholder. You implement the `Graph` class in the next section.

1. Open **main.py** and replace its entire contents with the following code.

    :::code language="python" source="includes/python/src/app-auth/graphapponlytutorial/main.py" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```python
    async def display_access_token(graph: Graph):
        # TODO
        return

    async def list_users(graph: Graph):
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
> [Add app-only authentication](python-app-only-authentication.md)
