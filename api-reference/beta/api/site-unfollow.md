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

Unfollow a user's [site][] or multiple sites in one request.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|            Permission type             | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

### Unfollow one site
```http
DELETE https://graph.microsoft.com/beta/users/{user-id}/followingSites
```
### Unfollow multiple sites
```http
DELETE https://graph.microsoft.com/beta/users/{user-id}/followingSites/batch
```

## Request body

In the request body, supply one or an array of JSON objects with the following parameter. 


| Name    | Value  | Description                                                  |
|:------- |:-------|:-------------------------------------------------------------|
|   Id    | string | The [unique identifier](../resources/site.md#site's-id) of the item. |

**Note:** The request body can have multiple objects each with Id parameter that allows multiple sites to unfollow per request. 


## Example

An example of how to unfollow one site.

<!-- { "blockType": "request", "name": "unfollow-site", "scopes": "sites.readwrite.all" } -->

```http
DELETE /users/{user-id}/followingSites
Content-Type: application/json

{
    "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
}
```

An example of how to unfollow multiple sites. 

```http
DELETE /users/{user-id}/followingSites/batch
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

### Unfollow one site 

If successful, this method returns a 204 status code with no content.  
If an error occured, this method returns the information of the [error][].

### Unfollow multiple sites 
If successful, this method returns a 204 status code with no content.  
If an error occured, this method returns a 207 status code and the response body will have the [error][] object and siteId. 

<!-- { "blockType": "response" } -->

```json
HTTP/1.1 204 No Content
Content-type: application/json
```

```json
HTTP/1.1 207 Multi-Status
Content-type: application/json
{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "error": {
                "@odata.type": "#oneDrive.error",
                "code": "invalidRequest",
                "message": "The site Id information that is provided in the request is incorrect",
                "innerError": {
                    "code": "invalidRequest",
                    "errorType": "expected",
                    "message": "The site Id information that is provided in the request is incorrect",
                    "stackTrace": "",
                    "throwSite": "a123b_ULS"
                }
            }
        }
    ]
}
```

[site]: ../resources/site.md
[error]: ../../../concepts/errors.md

<!-- {
  "type": "#page.annotation",
  "description": "Unfollow sharepoint site/sites for a user.",
  "keywords": "unfollow site",
  "section": "documentation",
  "tocPath": "Sites/Unfollow site"
} -->