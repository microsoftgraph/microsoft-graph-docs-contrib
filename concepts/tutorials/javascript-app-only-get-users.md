---
title: List users in JavaScript apps using Microsoft Graph
description: Learn how to use Microsoft Graph to list users with app-only authentication in JavaScript apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# List users in JavaScript apps using Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial Pisani -->

In this article, you extend the application you created in [Build JavaScript apps with Microsoft Graph and app-only authentication](javascript-app-only.md) with Microsoft Graph user APIs. You use Microsoft Graph to list users in your organization.

1. Open **graphHelper.js** and add the following function.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/graphHelper.js" id="GetUsersSnippet":::

1. Replace the empty `listUsersAsync` function in **index.js** with the following.

    :::code language="javascript" source="includes/javascript/src/app-auth/graphapponlytutorial/index.js" id="ListUsersSnippet":::

1. Run the app and choose option 2 to list users.

    ```Shell
    [1] Display access token
    [2] List users
    [3] Make a Graph call
    [0] Exit

    Select an option [1...3 / 0]: 2
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

Consider the code in the `getUsersAsync` function.

- It gets a collection of users
- It uses `select` to request specific properties
- It uses `top` to limit the number of users returned
- It uses `orderBy` to sort the response

## Next step

> [!div class="nextstepaction"]
> [Add additional Microsoft Graph APIs](javascript-app-only-extend-app.md)
