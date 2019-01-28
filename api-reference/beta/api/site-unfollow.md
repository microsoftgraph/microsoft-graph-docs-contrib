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

Unfollow a user's [site][] or multiple sites..

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|            Permission type             | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

To unfollow one site: 

```http
DELETE https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

To unfollow multiple sites:

```http
PATCH https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

## Request body

To follow one site:

In the request body, supply a JSON object with the following parameter. 


| Name    | Value  | Description                                                            |
|:------- |:-------|:-----------------------------------------------------------------------|
|   Id    | string | The [unique identifier](../resources/site.md#id-property) of the item. |

To unfollow multiple sites:

In the request body, supply an array JSON objects with the following parameters. 


| Name                 | Value  | Description                                                            |
|:---------------------|:-------|:-----------------------------------------------------------------------|
|   id                 | string | The [unique identifier](../resources/site.md#id-property) of the item. |
|   @oneDrive.action   | string | The type of action to perform on the site.                             |

The types of actions that are supported are the following:
* "oneDrive.action" : "follow"
* "oneDrive.action" : "unfollow"

>**Note:** This is a batch request supports to follow or unfollow multiple of sites per request.  
## Response body

To unfollow a site: 

* If the request is successful, this method returns a `204` status code with no content.  
* If an error occured while executing the request, this method returns the information of the [error][].

To unfollow multiple sites:  

* If the batch request is successful, this method returns an array of sites that were either followed or unfollowed.  
* If an error occured while executing the batch request, this method returns a `207` status code and the response body will have the [error][] object and siteId.

## Examples

### Example 1: Unfollow one site

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

### Example 2: Unfollow multiple sites:

The following example shows how to unfollow multiple sites. 

##### Request

```http
PATCH /users/{user-id}/followingSites
Content-Type: application/json

{
    "value":
    [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740", 
            "@oneDrive.action": "unfollow"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851", 
            "@oneDrive.action": "unfollow"
        }
    ] 
}
```
##### Response

If successful, it returns the following JSON response. 

<!-- { "blockType": "response" } -->

```json
HTTP/1.1 200 OK
Content-type: application/json
{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851"
        }
    ]
}
```

If an error occured, it returns the following JSON response 

<!-- { "blockType": "response" } -->

```json
HTTP/1.1 207 Multi-Status
Content-type: application/json
{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,512a596e-90a1-49e3-9b48-bfa80bee8740",
            "error": {
                "@odata.type": "#oneDrive.error",
                "code": "invalidRequest",
                "message": "The site Id information that is provided in the request is incorrect",
                "innerError": {
                    "code": "invalidRequest",
                    "errorType": "expected",
                    "message": "The site Id information that is provided in the request is incorrect",
                    "stackTrace": "",
                    "throwSite": ""
                }
            }
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851"
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
