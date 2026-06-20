---
title: "stopAndQuarantineFileAction resource type"
description: "Represents an automated action that stops and quarantines a file on a device returned by a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# stopAndQuarantineFileAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that stops and quarantines a file on a device returned by a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses device ID and SHA-1 columns from the query output to identify where to stop and quarantine the file.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceIdColumn|String|Name of the hunting-query result column that contains the device ID for the device where the file was observed.|
|sha1Column|String|Name of the hunting-query result column that contains the SHA-1 hash of the file to stop and quarantine.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.stopAndQuarantineFileAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.stopAndQuarantineFileAction",
  "deviceIdColumn": "String",
  "sha1Column": "String"
}
```