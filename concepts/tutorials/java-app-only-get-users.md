---
title: List users in Java apps using Microsoft Graph
description: Learn how to use Microsoft Graph to list users with app-only authentication in Java apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# List users in Java apps using Microsoft Graph

<!-- cSpell:ignore graphapponlytutorial, Pisani -->

In this article, you extend the application you created in [Build Java apps with Microsoft Graph and app-only authentication](java-app-only.md) with Microsoft Graph user APIs. You use Microsoft Graph to list users in your organization.

1. Open **Graph.java** and add the following function to the `Graph` class.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/Graph.java" id="GetUsersSnippet":::

1. Replace the empty `listUsers` function in **App.java** with the following.

    :::code language="java" source="includes/java/src/app-auth/graphapponlytutorial/app/src/main/java/graphapponlytutorial/App.java" id="ListUsersSnippet":::

1. Run the app, sign in, and choose option 4 to list users.

    ```bash
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

    More users available? True
    ```

## Code explained

Consider the code in the `getUsers` function.

### Accessing a collection

This method returns a collection of users. Most APIs in Microsoft Graph that return a collection don't return all available results in a single response. Instead, they use [paging](/graph/paging) to return a portion of the results while providing a method for clients to request the next page.

#### Default page sizes

APIs that use paging implement a default page size. For users, the default value is 10. Clients can request more (or less) by using the [$top](/graph/query-parameters#top-parameter) query parameter. In `getUsers`, adding `$top` is accomplished with the `top` property in the request configuration.

> [!NOTE]
> The value set in `top` is an upper-bound, not an explicit number. The API returns a number of users *up to* the specified value.

#### Getting subsequent pages

If there are more results available on the server, collection responses include an `@odata.nextLink` property with an API URL to access the next page. The Java client library provides the `getOdataNextLink` method on collection response objects. If this method returns non-null, there are more results available.

### Sorting collections

The function uses the `orderBy` property on the request configuration to request results sorted by the users' display names. This property adds the [$orderby query parameter](/graph/query-parameters#orderby-parameter) to the API call.

## Next step

> [!div class="nextstepaction"]
> [Add additional Microsoft Graph APIs](java-app-only-extend-app.md)
