---
author: learafa
ms.author: learafa
ms.date: 01/14/2019
title: Unfollow Site
localization_priority: Normal
ms.prod: "sharepoint"
---
# Unfollow site 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Unfollow a user's [site](../resources/site.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|            Permission type             | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE https://graph.microsoft.com/beta/users/{user-id}/followedSites/{id}
```

>**Note:** The "id" is the [unique identifier](../resources/site.md#id-property) of the site.
 
## Response body

  If the request is successful, this method returns a `204` status code with no content.  
  If an error occured while executing the request, this method returns the information of the [error](../../../concepts/errors.md).

## Example

The following example shows how to unfollow a site.

<!-- { "blockType": "request", "name": "unfollow-site", "scopes": "sites.readwrite.all" } -->

```http
DELETE /users/{user-id}/followedSites/{id}
```

<!-- {
  "type": "#page.annotation",
  "description": "Unfollow sharepoint site/sites for a user.",
  "keywords": "unfollow site",
  "section": "documentation",
  "tocPath": "Sites/Unfollow site"
} -->
