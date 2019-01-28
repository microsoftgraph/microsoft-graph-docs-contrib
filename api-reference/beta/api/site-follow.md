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

Follow a user's [site][].

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


| Name                 | Value  | Description                                                            |
|:---------------------|:-------|:-----------------------------------------------------------------------|
|   id                 | string | The [unique identifier](../resources/site.md#id-property) of the item. |

## Response body 

If the request is successful, this mehtod returns the site object the was followed.  
If an error occured while executing the request, this method returns the information of the [error][].

## Example

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


[site]: ../resources/site.md
[error]: ../../../concepts/errors.md

<!-- {
  "type": "#page.annotation",
  "description": "Follow sharepoint site for a user.",
  "keywords": "follow site",
  "section": "documentation",
  "tocPath": "Sites/Follow site"
} -->
