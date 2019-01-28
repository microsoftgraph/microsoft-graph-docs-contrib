---
author: learafa
ms.author: learafa
ms.date: 01/14/2019
title: Follow/Unfollow Sites
localization_priority: Normal
ms.prod: "sharepoint"
---
# Follow/Unfollow Sites 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Follow or Unfollow multiple sites for a user in a batch request.

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
PATCH https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

## Request body

In the request body, supply an array of JSON objects with the following parameters. 


| Name                 | Value  | Description                                                            |
|:---------------------|:-------|:-----------------------------------------------------------------------|
|   id                 | string | The [unique identifier](../resources/site.md#id-property) of the item. |
|   @oneDrive.action    | string | The type of action to perform on the site.                             |

The types of actions that are supported are as follows:
* "oneDrive.action" : "follow"
* "oneDrive.action" : "unfollow"

>**Note:** This is a batch request to follow or unfollow multiple of sites per request.  

## Response body 

If the batch request is successful, this method returns an array of sites that were either followed or unfollowed.  
If an error occured while executing the batch request, this method returns a 207 status code and the response body will have the [error][] object and siteId.

## Example

The following example shows how to follow or unfollow multiple sites. 

##### Request

```http
POST /users/{user-id}/followingSites
Content-Type: application/json

{
    "value":
    [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740", 
            "@oneDrive.action": "follow"
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
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "webUrl": "http://contoso.sharepoint.com/sites/SiteFollowed1",
            "title": "SiteFollowed1",
            "sharepointIds": {
                "siteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
                "siteUrl": "http://contoso.sharepoint.com/sites/SiteFollowed1",
                "webId": "712a596e-90a1-49e3-9b48-bfa80bee8740"
            },
            "siteCollection": {
                "hostName": "contoso.sharepoint.com"
            }
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
            "id": "contoso.sharepoint.com,db60e844-ba1d-49bc-b4d4-d5e36bae9019,6271110f-634f-4300-a841-3a8a2e851851",
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
        }
    ]
}
```  

[site]: ../resources/site.md
[error]: ../../../concepts/errors.md

<!-- {
  "type": "#page.annotation",
  "description": "Follow or unfollow sharepoint site/sites for a user.",
  "keywords": "follow-unfollow sites",
  "section": "documentation",
  "tocPath": "Sites/Follow/Unfollow Sites"
} -->
