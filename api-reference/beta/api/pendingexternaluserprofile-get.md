---
title: "Get pendingExternalUserProfile"
description: "Get a pendingExternalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# Get pendingExternalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a specific [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|PendingExternalUserProfile.Read.All, PendingExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|PendingExternalUserProfile.Read.All, PendingExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator
* Global reader

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/pendingExternalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) in the response body.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_pendingExternalUserProfile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/pendingExternalUserProfiles/{id}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pendingExternalUserProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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
  "address": {
      "city": null,
      "countryOrRegion": null,
      "officeLocation": null,
      "postalCode": null,
      "state": null,
      "street": null
  },
  "epoch":1,
  "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
  "supervisorId":"fffba82a-fffc-ff3c-83e1-fc8ff9dfff",
  "companyName":"Vendor Market"
}

```

<!-- {
  "type": "#page.annotation",
  "description": "Get pendingExternalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->
