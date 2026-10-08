---
title: "fileAction resource type"
description: "Represents an automated action that targets files returned by a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# fileAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that targets files returned by a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses file hash columns from the query output to identify the files.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceGroupNames|String collection|Names of the device groups where the file action applies.|
|sha1Column|String|Name of the hunting-query result column that contains the SHA-1 hash of the targeted file.|
|sha256Column|String|Name of the hunting-query result column that contains the SHA-256 hash of the targeted file.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileAction",
  "deviceGroupNames": [
    "String"
  ],
  "sha1Column": "String",
  "sha256Column": "String"
}
```