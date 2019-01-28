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

Unfollow a user's [site][].

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
DELETE https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

## Request body

In the request body, supply a JSON object with the following parameter. 


| Name    | Value  | Description                                                  |
|:------- |:-------|:-------------------------------------------------------------|
|   Id    | string | The [unique identifier](../resources/site.md#id-property) of the item. |

## Response

If the request is successful, this method returns a `204` status code with no content.  
If an error occured while executing the request, this method returns the information of the [error][].

## Example

The following example shows how to unfollow a site.

##### Request

<!-- { "blockType": "request", "name": "unfollow-site", "scopes": "sites.readwrite.all" } -->

```http
DELETE /users/{user-id}/followingSites
Content-Type: application/json

{
    "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
}
```
##### Response

If successful, it returns the following response. 

```json
HTTP/1.1 204 No Content
Content-type: application/json
```

[site]: ../resources/site.md
[error]: ../../../concepts/errors.md

<!-- {
  "type": "#page.annotation",
  "description": "Unfollow sharepoint site for a user.",
  "keywords": "unfollow site",
  "section": "documentation",
  "tocPath": "Sites/Unfollow site"
} -->
