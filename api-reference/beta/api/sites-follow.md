---
author: learafa
ms.author: learafa
ms.date: 01/14/2019
title: FollowingSites
localization_priority: Normal
ms.prod: "sharepoint"
---
# Follow sites 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Follow a [user's][] [site][] or multiple sites in one request.

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
POST https://graph.microsoft.com/beta/users/{user-id}/followingSites
```

## Request body

In the request body, supply a JSON object with the following parameter. 


| Name    | Value  | Description                                                  |
|:--------|:-------|:-------------------------------------------------------------|
| Id      | string | A composite Id of the hostname, site-Id, web-Id of the site. |

**Note:** the request body can have multiple objects with the following site-Id that allows following multiple sites


## Example

Here is an example of how to follow multiple sites. 

<!-- { "blockType": "request", "name": "follow-sites", "scopes": "sites.readwrite.all" } -->

```http
POST /users/{user-id}/followingSites
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

If successful, this method returns a site or sites object that were followed. 
If an error occured following one of the sites, it will return 207 status code and the response body will have the error object and siteId. 

<!-- { "blockType": "response" } -->

```json
HTTP/1.1 202 OK
Content-type: application/json
{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "webUrl": "http://learafa-97/sites/LenaAdelSite",
            "title": "LenaAdelSite",
            "sharepointIds": {
                "siteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
                "siteUrl": "http://contoso.sharepoint.com/sites/LenaAdelSite",
                "webId": "712a596e-90a1-49e3-9b48-bfa80bee8740"
            },
            "siteCollection": {
                "hostName": "contoso.sharepoint.com"
            }
        }
    ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Follow sharepoint sites/site for a user.",
  "keywords": "follow site",
  "section": "documentation",
  "tocPath": "Sites/Follow"
} -->