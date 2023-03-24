---
title: "List externalUserProfiles"
description: "List all externalUserProfile objects."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# List externalUserProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of all [externalUserProfiles](../resources/externaluserprofile.md)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|ExternalUserProfile.Read.All, ExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|ExternalUserProfile.Read.All, ExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator
* Global reader

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/externalUserProfiles/{id}
```

## Optional query parameters

You can use `$filter` to only return specific external user profiles. The following properties can be used to `$filter`:

* companyName
* supervisorId

For more information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [externalUserProfile](../resources/externaluserprofile.md) in the response body.

## Examples

### Example 1: Get all external user profiles

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_externalUserProfiles"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/externalUserProfiles
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalUserProfile)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id":"1e4ba82a-5f0c-423c-83e1-fc8ad69d8f02",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Bob Henry",
            "isDiscoverable":true,
            "jobTitle":null,
            "phoneNumber":"4257034568",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "epoch":1,
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        },
        {
            "id":"fffba82a-fffc-ff3c-83e1-fc8ff9dfff",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Jack Hill",
            "isDiscoverable":false,
            "jobTitle":null,
            "phoneNumber":"4257034788",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "epoch":2,
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        }
    ]
}
```

### Example 2: List all external user profiles that are discoverable

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_externalUserProfiles_filter"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/externalUserProfiles$filter=isDiscoverable eq true
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalUserProfile)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id":"1e4ba82a-5f0c-423c-83e1-fc8ad69d8f02",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Bob Henry",
            "isDiscoverable":true,
            "jobTitle":null,
            "phoneNumber":"4257034568",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "epoch":1,
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        }
    ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List externalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->
