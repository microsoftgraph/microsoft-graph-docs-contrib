---
title: "migrateSensorsResult resource type"
description: "Represents the result of a sensor migration operation in Microsoft Defender for Identity."
author: "SamuelBenichou"
ms.date: 03/23/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# migrateSensorsResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a sensor migration operation in Microsoft Defender for Identity. Contains the lists of sensor IDs that were successfully migrated and those that failed.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedMigrationSensorIds|String collection|The collection of sensor IDs that failed to migrate.|
|successfulMigrationSensorIds|String collection|The collection of sensor IDs that were successfully migrated.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.migrateSensorsResult",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.migrateSensorsResult",
  "successfulMigrationSensorIds": ["String"],
  "failedMigrationSensorIds": ["String"]
}