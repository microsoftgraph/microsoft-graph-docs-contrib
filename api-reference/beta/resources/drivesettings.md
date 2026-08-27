---
title: "driveSettings resource type"
description: "Represents the settings associated with a drive."
author: "danipocket"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/23/2026
---

# driveSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings associated with a [drive](../resources/drive.md). Contains configuration values that apply to the drive and its contents. This property isn't returned by default and must be selected using the `$select` query parameter.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|itemDefaultSensitivityLabelId|String|The ID of the default sensitivity label for items in the drive. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driveSettings"
}
-->
``` json
{
  "itemDefaultSensitivityLabelId": "String"
}
```
