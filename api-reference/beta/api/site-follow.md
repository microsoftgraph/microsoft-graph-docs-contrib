---
author: learafa
ms.author: learafa
ms.date: 01/14/2019
title: Follow Site
localization_priority: Normal
ms.prod: "sharepoint"
---
# Follow site 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Follow a user's [site][] or multiple sites.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|            Permission type             | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

To follow one site:

```http
POST https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

To follow multiple sites:

```http
PATCH https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

## Request body

To follow one site:

In the request body, supply a JSON object with the following parameter. 


| Name                 | Value  | Description                                                            |
|:---------------------|:-------|:-----------------------------------------------------------------------|
|   id                 | string | The [unique identifier](../resources/site.md#id-property) of the item. |

To follow multiple sites:

In the request body, supply an array JSON objects with the following parameters. 


| Name                 | Value  | Description                                                            |
|:---------------------|:-------|:-----------------------------------------------------------------------|
|   id                 | string | The [unique identifier](../resources/site.md#id-property) of the item. |
|   @oneDrive.action    | string | The type of action to perform on the site.                            |

The types of actions that are supported are the following:
* "oneDrive.action" : "follow"
* "oneDrive.action" : "unfollow"

>**Note:** This is a batch request supports to follow or unfollow multiple of sites per request.  

## Response body 

To follow one site:

* If the request is successful, this method returns the site object the was followed.  
* If an error occured while executing the request, this method returns the information of the [error][].

To follow multiple sites:  

* If the batch request is successful, this method returns an array of sites that were either followed or unfollowed.  
* If an error occured while executing the batch request, this method returns a `207` status code and the response body will have the [error][] object and siteId.

## Examples

### Example 1: Follow one sites

The following example shows how to follow a site.

##### Request

<!-- { "blockType": "request", "name": "follow-site", "scopes": "sites.readwrite.all" } -->

```http
POST /users/{user-id}/followingSites
Content-Type: application/json

{
    "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
}
```
##### Response

If successful, it returns the following JSON response. 

<!-- { "blockType": "response" } -->

```json
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context":"http://sp-my.devinstall/personal/contoso_sharepoint_com/_api/v2.1/$metadata#followingSites/$entity",
    "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
    "webUrl": "http://contoso.sharepoint.com/sites/SiteFollowed",
    "title": "SiteFollowed",
    "sharepointIds": {
        "siteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
        "siteUrl": "http://contoso.sharepoint.com/sites/SiteFollowed",
        "webId": "712a596e-90a1-49e3-9b48-bfa80bee8740"
    },
    "siteCollection": {
        "hostName": "contoso.sharepoint.com"
    }
}
```
### Example 2: Follow multiple sites:

The following example shows how to follow multiple sites. 

##### Request

```http
PATCH /users/{user-id}/followingSites
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
            "@oneDrive.action": "follow"
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
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "webUrl": "http://contoso.sharepoint.com/sites/SiteFollowed2",
            "title": "SiteFollowed2",
            "sharepointIds": {
                "siteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
                "siteUrl": "http://contoso.sharepoint.com/sites/SiteFollowed2",
                "webId": "0271110f-634f-4300-a841-3a8a2e851851"
            },
            "siteCollection": {
                "hostName": "contoso.sharepoint.com"
            }
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
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "webUrl": "http://contoso.sharepoint.com/sites/SiteFollowed2",
            "title": "SiteFollowed2",
            "sharepointIds": {
                "siteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
                "siteUrl": "http://contoso.sharepoint.com/sites/SiteFollowed2",
                "webId": "0271110f-634f-4300-a841-3a8a2e851851"
            },
            "siteCollection": {
                "hostName": "contoso.sharepoint.com"
            }
        }
    ]
}
```  

[site]: ../resources/site.md
[error]: ../../../concepts/errors.md

<!-- {
  "type": "#page.annotation",
  "description": "Follow sharepoint site for a user.",
  "keywords": "follow site",
  "section": "documentation",
  "tocPath": "Sites/Follow site"
} -->
