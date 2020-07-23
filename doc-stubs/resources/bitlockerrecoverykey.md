---
title: "bitlockerRecoveryKey resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bitlockerRecoveryKey resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bitlockerRecoveryKeys](../api/bitlockerrecoverykey-list.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|Get a list of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects and their properties.|
|[Create bitlockerRecoveryKey](../api/bitlockerrecoverykey-create.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Create a new [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|
|[Get bitlockerRecoveryKey](../api/bitlockerrecoverykey-get.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Read the properties and relationships of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|
|[Update bitlockerRecoveryKey](../api/bitlockerrecoverykey-update.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Update the properties of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|
|[Delete bitlockerRecoveryKey](../api/bitlockerrecoverykey-delete.md)|None|Deletes a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|deviceId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|key|String|**TODO: Add Description**|
|volumeType|volumeType|**TODO: Add Description**. Possible values are: `operatingSystemVolume`, `fixedDataVolume`, `removableDataVolume`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bitlockerRecoveryKey",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitlockerRecoveryKey",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "volumeType": "String",
  "deviceId": "String",
  "key": "String"
}
```

