---
title: "Update externalUserProfile"
description: "Update the properties of a externalUserProfile object."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update externalUserProfile

Namespace: microsoft.graph

Update the properties of a [externalUserProfile](../resources/externaluserprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|ExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|ExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /directory/externalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalUserProfile](../resources/externaluserprofile.md) object.

The following table shows the properties that are able to be updated after a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) is redeemed and converted to an [externalUserProfile](../resources/externaluserprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalOfficeAddress](../resources/physicalofficeaddress.md)|The office address of the pending external user profile.|
|companyName|String|The company name of the pending external user profile. |
|department|String|The department of the pending external user profile. |
|displayName|String|The display name of the pending external user profile.|
|isDiscoverable|Boolean|Represents whether the pending external user profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the pending external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|supervisorId|String|The object id of the supervisor of the pending external user profile.|

## Response

If successful, this method returns a `204 No Content` response code and an updated [externalUserProfile](../resources/externaluserprofile.md) object in the response body.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_externaluserprofile"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/directory/externalUserProfiles/{id}
Content-Type: application/json

{
  "jobTitle": "Contractor"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
}
-->

``` http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "description": "Update externalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
