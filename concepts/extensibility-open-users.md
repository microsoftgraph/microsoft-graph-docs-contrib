---
title: "Add custom data to users using open extensions"
description: "Learn how to add an open extension to a user's profile, query it, change and delete the extension."
author: FaithOmbongi
ms.reviewer: dkershaw
ms.prod: "extensions"
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.topic: tutorial
ms.date: 01/25/2024
#Customer intent: As a developer, I want to learn how to store lightweight data to Microsoft Entra users through Microsoft Graph, and avoid using an external database system.
---

# Add custom data to users using open extensions

In this tutorial, you lean how to use [open extensions](/graph/api/resources/opentypeextension).

Imagine you're building an application that's available on multiple client platforms, such as desktop and mobile. You want to let users configure their UI experience so it's consistent no matter which device they use to sign in to your app.

For this scenario, this article shows you how to:

> [!div class="checklist"]
>
> - Represent some roaming profile information about the user using open extensions.
> - Query the user and return the roaming profile.
> - Change the user's roaming profile information stored in the open extension.
> - Delete the user's roaming profile information.

> [!NOTE]
> Apart from users, open extensions are also supported and can be managed for [other resource types](extensibility-overview.md#comparison-of-extension-types).

## Prerequisites

To reproduce the steps in this article, you need the following privileges:

- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) and the user you want to store the roaming profile for.
- Grant the app the *User.ReadWrite* delegated permission for the signed-in user.

## Step 1. Add roaming profile information

The user signs in to the app and configures the look and feel of the app. These app settings should roam so that the user gets the same experience on whatever device they sign in to the app from. The app calls Microsoft Graph by running the following request to add the roaming profile information to the signed-in user's resource object.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openextensions-users-create"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/extensions
Content-type: application/json

{
    "@odata.type":"microsoft.graph.openTypeExtension",
    "extensionName":"com.contoso.roamingSettings",
    "theme":"dark",
    "color":"purple",
    "lang":"Japanese"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/openextensions-users-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/openextensions-users-create-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/openextensions-users-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/openextensions-users-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/openextensions-users-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/openextensions-users-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/openextensions-users-create-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/openextensions-users-create-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openTypeExtension"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('376bdbfc-e41f-4082-a8cf-b31731465eeb')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "extensionName": "com.contoso.roamingSettings",
    "theme": "dark",
    "color": "purple",
    "lang": "Japanese",
    "id": "com.contoso.roamingSettings"
}
```

## Step 2. Retrieve roaming profile information

When the user signs in to the app from another device, the app calls Microsoft Graph to retrieve the user's profile details and expand the **extensions** navigation property to get their roaming settings, then uses this data to provide the same experience as on the other device.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openextensions-users-get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me?$select=id,displayName,mail,mobilePhone&$expand=extensions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/openextensions-users-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/openextensions-users-get-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/openextensions-users-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/openextensions-users-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/openextensions-users-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/openextensions-users-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/openextensions-users-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/openextensions-users-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openTypeExtension"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(id,displayName,mail,mobilePhone,extensions())/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET me?$select=signInActivity,accountEnabled",
    "id": "376bdbfc-e41f-4082-a8cf-b31731465eeb",
    "displayName": "Raul Razo",
    "mail": null,
    "mobilePhone": null,
    "extensions@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('376bdbfc-e41f-4082-a8cf-b31731465eeb')/extensions",
    "extensions": [
        {
            "@odata.type": "#microsoft.graph.openTypeExtension",
            "extensionName": "com.contoso.roamingSettings",
            "theme": "dark",
            "color": "purple",
            "lang": "Japanese",
            "id": "com.contoso.roamingSettings"
        }
    ]
}
```

## Step 3. Change roaming profile information

The user can choose to change their roaming profile information. The app calls Microsoft Graph by running the following query. The request returns a `204 No Content` response code.

You must include all properties in the request body as well, even if you want to update only a subset of them. Otherwise, Microsoft Graph removes the properties you don't pass in. To delete data but keep a property, set the property value to `null`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openextensions-users-update"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/extensions/com.contoso.roamingSettings
Content-type: application/json

{
    "theme":"light",
    "color":"yellow",
    "lang":"Swahili"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/openextensions-users-update-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/openextensions-users-update-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/openextensions-users-update-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/openextensions-users-update-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/openextensions-users-update-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/openextensions-users-update-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/openextensions-users-update-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/openextensions-users-update-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 4. Delete a user's roaming profile

The user decides that they don't want a roaming profile anymore. To delete the extension property, the app calls Microsoft Graph by running the following request. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openextensions-users-delete"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/extensions/com.contoso.roamingSettings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/openextensions-users-delete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/openextensions-users-delete-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/openextensions-users-delete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/openextensions-users-delete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/openextensions-users-delete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/openextensions-users-delete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/openextensions-users-delete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/openextensions-users-delete-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- [Add custom data to resources using extensions](extensibility-overview.md)
- [Add custom data to groups using schema extensions](extensibility-schema-groups.md)
- [openTypeExtension resource type](/graph/api/resources/opentypeextension)
