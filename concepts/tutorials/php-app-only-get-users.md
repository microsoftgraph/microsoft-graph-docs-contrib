---
title: List users in PHP apps using Microsoft Graph
description: Learn how to use Microsoft Graph to list users with app-only authentication in PHP apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# List users in PHP apps using Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial Pisani -->

In this article, you extend the application you created in [Build PHP apps with Microsoft Graph and app-only authentication](php-app-only.md) with Microsoft Graph user APIs. You use Microsoft Graph to list users in your organization.

1. Add the following code to the `GraphHelper` class.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/GraphHelper.php" id="GetUsersSnippet":::

1. Replace the empty `listUsers` function in **main.php** with the following.

    :::code language="php" source="includes/php/src/app-auth/graphapponlytutorial/main.php" id="ListUsersSnippet":::

1. Run the app, sign in, and choose option 2 to list users.

    ```Shell
    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List users
    3. Make a Graph call
    2
    User: Adele Vance
      ID: 05fb57bf-2653-4396-846d-2f210a91d9cf
      Email: AdeleV@contoso.com
    User: Alex Wilber
      ID: a36fe267-a437-4d24-b39e-7344774d606c
      Email: AlexW@contoso.com
    User: Allan Deyoung
      ID: 54cebbaa-2c56-47ec-b878-c8ff309746b0
      Email: AllanD@contoso.com
    User: Bianca Pisani
      ID: 9a7dcbd0-72f0-48a9-a9fa-03cd46641d49
      Email: NO EMAIL
    User: Brian Johnson (TAILSPIN)
      ID: a8989e40-be57-4c2e-bf0b-7cdc471e9cc4
      Email: BrianJ@contoso.com

    ...

    More users available? true
    ```

## Code explained

Consider the code in the `getUsers` function.

- It gets a collection of users.
- It uses `queryParameters->select` to request specific properties
- It uses `queryParameters->top` to limit the number of users returned
- It uses `queryParameters->orderby` to sort the response

## Next step

> [!div class="nextstepaction"]
> [Add additional Microsoft Graph APIs](php-app-only-extend-app.md)
