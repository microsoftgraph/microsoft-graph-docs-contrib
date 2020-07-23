---
title: "bitlocker resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bitlocker resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bitlockers](../api/bitlocker-list.md)|[bitlocker](../resources/bitlocker.md) collection|Get a list of the [bitlocker](../resources/bitlocker.md) objects and their properties.|
|[Create bitlocker](../api/bitlocker-create.md)|[bitlocker](../resources/bitlocker.md)|Create a new [bitlocker](../resources/bitlocker.md) object.|
|[Get bitlocker](../api/bitlocker-get.md)|[bitlocker](../resources/bitlocker.md)|Read the properties and relationships of a [bitlocker](../resources/bitlocker.md) object.|
|[Update bitlocker](../api/bitlocker-update.md)|[bitlocker](../resources/bitlocker.md)|Update the properties of a [bitlocker](../resources/bitlocker.md) object.|
|[Delete bitlocker](../api/bitlocker-delete.md)|None|Deletes a [bitlocker](../resources/bitlocker.md) object.|
|[List recoveryKeys](../api/bitlocker-list-recoverykeys.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|Get the bitlockerRecoveryKeys from the recoveryKeys navigation property.|
|[Create recoveryKeys](../api/bitlocker-post-recoverykeys.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Create a new recoveryKeys object.|
|[Get recoveryKeys](../api/bitlocker-get-bitlockerrecoverykey.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Read the properties and relationships of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|
|[Update recoveryKeys](../api/bitlocker-update-recoverykeys.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Update the properties of a recoveryKeys object.|
|[Delete recoveryKeys](../api/bitlocker-delete-recoverykeys.md)|None|Delete a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|recoveryKeys|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bitlocker",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitlocker",
  "id": "String (identifier)"
}
```

