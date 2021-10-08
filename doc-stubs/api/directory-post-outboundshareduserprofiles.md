---
title: "Create outboundSharedUserProfile"
description: "Create a new outboundSharedUserProfile object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create outboundSharedUserProfile
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new outboundSharedUserProfile object.

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
POST /directory/outboundSharedUserProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.

The following table shows the properties that are required when you create the [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|userId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_outboundshareduserprofile_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles
Content-Type: application/json
Content-length: 146

{
  "@odata.type": "#Microsoft.DirectoryServices.outboundSharedUserProfile",
  "deletedDateTime": "String (timestamp)",
  "userId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.outboundSharedUserProfile"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.outboundSharedUserProfile",
  "id": "aed4a760-a760-aed4-60a7-d4ae60a7d4ae",
  "deletedDateTime": "String (timestamp)",
  "userId": "String"
}
```

