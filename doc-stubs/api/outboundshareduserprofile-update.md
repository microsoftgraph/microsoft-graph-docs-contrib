---
title: "Update outboundSharedUserProfile"
description: "Update the properties of an outboundSharedUserProfile object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update outboundSharedUserProfile
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.

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
PATCH /directory/outboundSharedUserProfiles/{outboundSharedUserProfileId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.

The following table shows the properties that are required when you update the [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|userId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_outboundshareduserprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/{outboundSharedUserProfileId}
Content-Type: application/json
Content-length: 134

{
  "@odata.type": "#microsoft.graph.outboundSharedUserProfile",
  "deletedDateTime": "String (timestamp)",
  "userId": "String"
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
  "@odata.type": "#microsoft.graph.outboundSharedUserProfile",
  "id": "aed4a760-a760-aed4-60a7-d4ae60a7d4ae",
  "deletedDateTime": "String (timestamp)",
  "userId": "String"
}
```

