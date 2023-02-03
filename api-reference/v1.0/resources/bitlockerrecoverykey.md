---
title: "bitlockerRecoveryKey resource type"
description: "BitLocker recovery key resource"
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# bitlockerRecoveryKey resource type

Namespace: microsoft.graph

Represents a stored BitLocker key that contains the actual recovery key via the **key** property.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List recoveryKeys](../api/bitlocker-list-recoverykeys.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|Get a list of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects and their properties.|
|[Get bitlockerRecoveryKey](../api/bitlockerrecoverykey-get.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Retrieve the properties and relationships of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object. Note: The **key** property is not returned by default.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the key was originally backed up to Azure Active Directory. Not nullable.|
|deviceId|String|Identifier of the device the BitLocker key is originally backed up from. Supports `$filter` (`eq`).|
|id|String|The unique identifier for the BitLocker key.|
|key|String|The BitLocker recovery key. Returned only on `$select`. Not nullable.|
|volumeType|volumeType|Indicates the type of volume the BitLocker key is associated with. The possible values are: `1` (for `operatingSystemVolume`), `2` (for `fixedDataVolume`), `3` (for `removableDataVolume`), and `4` (for `unknownFutureValue`).|

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
  "createdDateTime": "String (timestamp)",
  "deviceId": "String",
  "id": "String (identifier)",
  "key": "String",
  "volumeType": "String"
}
```

