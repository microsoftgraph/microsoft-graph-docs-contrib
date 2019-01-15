---
author: learafa
ms.author: learafa
ms.date: 01/14/2019
title: UnFollow Sites
localization_priority: Normal
ms.prod: "sharepoint"
---
# UnFollow sites 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

UnFollow a user's [site][] or multiple sites in one request.

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
|   Id    | string | A composite id of the hostname, site-id, web-id of the site. |

**Note:** The request body can have multiple objects with an Id that allows to unfollow multiple sites.


## Example

Here is an example of how to unfollow multiple sites. 

<!-- { "blockType": "request", "name": "unfollow-sites", "scopes": "sites.readwrite.all" } -->

```http
DELETE /users/{user-id}/followingSites
Content-Type: application/json

{
    "value":
    [
        {"id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"},
        {"id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851"}
    ] 
}
```

## Response

If successful, this method returns a 204 status code with no content.  
If an error occured, this method returns a 207 status code and the response body will have the error object and siteId. 

[site]: ../resources/site.md

<!-- {
  "type": "#page.annotation",
  "description": "UnFollow sharepoint sites/site for a user.",
  "keywords": "unfollow site",
  "section": "documentation",
  "tocPath": "Sites/UnFollow"
} -->