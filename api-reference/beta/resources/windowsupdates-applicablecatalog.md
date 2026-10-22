---
title: "applicableCatalog resource type"
description: "Represents a Windows update catalog entry that applies to one or more devices targeted by an Autopatch policy."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# applicableCatalog resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Windows update catalog entry that applies to one or more devices targeted by an Autopatch policy. Use this resource to inspect aggregate applicability and navigate to the affected devices or the associated catalog entry.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get applicable catalog](../api/windowsupdates-applicablecatalog-get.md)|[microsoft.graph.windowsUpdates.applicableCatalog](../resources/windowsupdates-applicablecatalog.md)|Read the properties and relationships of an applicable catalog.|
|[List devices](../api/windowsupdates-applicablecatalog-list-devices.md)|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|List the devices for which the catalog entry is applicable.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int32|The number of devices for which the catalog entry is applicable. Read-only.|
|hasRecommendedDevice|Boolean|Indicates whether the catalog entry is recommended for at least one applicable device. Read-only.|
|id|String|The identifier of the associated catalog entry. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalogEntry|[microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md)|The associated Windows update catalog entry.|
|devices|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|The devices for which the catalog entry is applicable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableCatalog",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableCatalog",
  "deviceCount": "Int32",
  "hasRecommendedDevice": "Boolean",
  "id": "String (identifier)"
}
```
