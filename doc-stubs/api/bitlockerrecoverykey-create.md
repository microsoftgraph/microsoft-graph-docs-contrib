---
title: "Create bitlockerRecoveryKey"
description: "Create a new bitlockerRecoveryKey object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bitlockerRecoveryKey
Namespace: microsoft.graph

Create a new [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /bitlocker/recoveryKeys
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.

The following table shows the properties that are required when you create the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|volumeType|volumeType|**TODO: Add Description**. Possible values are: `operatingSystemVolume`, `fixedDataVolume`, `removableDataVolume`, `unknownFutureValue`.|
|deviceId|String|**TODO: Add Description**|
|key|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bitlockerrecoverykey_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/bitlocker/recoveryKeys
Content-Type: application/json
Content-length: 134

{
  "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
  "volumeType": "String",
  "deviceId": "String",
  "key": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bitlockerRecoveryKey"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
  "id": "b465e4e8-e4e8-b465-e8e4-65b4e8e465b4",
  "createdDateTime": "String (timestamp)",
  "volumeType": "String",
  "deviceId": "String",
  "key": "String"
}
```

