---
title: "updateManagementEnrollment resource type"
description: "Represents enrollment into management by Windows Autopatch of a certain update category."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# updateManagementEnrollment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents enrollment into management by Windows Autopatch of a certain update category.

Inherits from [updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|updateCategory|microsoft.graph.windowsUpdates.updateCategory|The category of updates that Windows Autopatch manages. Supports a subset of the values for **updateCategory**. The possible values are: `driver`, `feature`, `quality`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updateManagementEnrollment",
  "updateCategory": "String"
}
```
