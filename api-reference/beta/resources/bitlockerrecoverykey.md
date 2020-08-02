---
title: "bitlockerRecoveryKey resource type"
description: "BitLocker recovery key resource"
author: "hafowler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# bitlockerRecoveryKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Collectively represents a stored BitLocker recovery key and contains the actual key. Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bitlockerRecoveryKeys](../api/bitlockerrecoverykey-list.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection|Get a list of the [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) objects and their properties.|
|[Get bitlockerRecoveryKey](../api/bitlockerrecoverykey-get.md)|[bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md)|Read the properties and relationships of a [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) object. Note: The key property is not returned by default.|

> NOTE: Only some roles have the permissions to call the above APIs. See a method to learn more.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the key was originally backed up to Azure Active Directory.|
|deviceId|String|Id of the device the BitLocker key is originally backed up from.|
|id|String|The unique identifier for the BitLocker key.|
|key|String|The BitLocker recovery key.|
|volumeType|volumeType|Indicates the type of volume the BitLocker key is associated with. Possible values are: `operatingSystemVolume`, `fixedDataVolume`, `removableDataVolume`, `unknownFutureValue`.|

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

