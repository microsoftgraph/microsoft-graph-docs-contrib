---
title: "Create pendingExternalUserProfile"
description: "Create a new pendingExternalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# Create pendingExternalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|PendingExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|PendingExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /directory/pendingExternalUserProfiles
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md).

|Property|Type|Description|
|:---------------|:--------|:----------|
|address|[physicalOfficeAddress](../resources/physicalofficeaddress.md)|The office address of the pending external user profile.|
|createdBy|String|The object id of the user who created the pending external user profile. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this pending external user profile was created. Not nullable. Read-only. |
|companyName|String|The company name of the pending external user profile. |
|deletedDateTime|DateTimeOffset|Date and time when the pending external user profile was deleted. Always `null` when the object hasn't been deleted. |
|department|String|The department of the pending external user profile. |
|displayName|String|The display name of the pending external user profile. **Required**.|
|epoch|Int|The version number of the pending external user profile. Incremented with each update to the entity. Read-only. Not nullable.|
|id|String|The unique identifier for the pending external user profile. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only.|
|isDiscoverable|Boolean|Represents whether the pending external user profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the pending external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|phoneNumber|String|The phone number of the pending external user profile. Must be in E164 format. **Required**.|
|supervisorId|String|The object id of the supervisor of the pending external user profile.|

## Response

If successful, this method returns a `201 Created` response code and a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) object. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_pendingexternaluserprofile"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/pendingExternalUserProfiles
Content-type: application/json

{
    "phoneNumber": "+15555555555",
    "displayName": "Bob Henry"
}
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pendingExternalUserProfile"
} -->

```http
HTTP/1.1 201 Created
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
    "supervisorId":null,
    "companyName":null
}
```
