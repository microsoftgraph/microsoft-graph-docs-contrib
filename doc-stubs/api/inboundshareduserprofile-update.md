---
title: "Update inboundSharedUserProfile"
description: "Update the properties of an inboundSharedUserProfile object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update inboundSharedUserProfile
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/inboundSharedUserProfiles/{inboundSharedUserProfileId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.

The following table shows the properties that are required when you update the [inboundSharedUserProfile](../resources/inboundshareduserprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|homeTenantId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_inboundshareduserprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles/{inboundSharedUserProfileId}
Content-Type: application/json
Content-length: 224

{
  "@odata.type": "#microsoft.graph.inboundSharedUserProfile",
  "deletedDateTime": "String (timestamp)",
  "userId": "String",
  "userPrincipalName": "String",
  "displayName": "String",
  "homeTenantId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.inboundSharedUserProfile",
  "id": "652acb96-cb96-652a-96cb-2a6596cb2a65",
  "deletedDateTime": "String (timestamp)",
  "userId": "String",
  "userPrincipalName": "String",
  "displayName": "String",
  "homeTenantId": "String"
}
```

