---
title: "applicableContent resource type"
description: "Represents content applicable for offering to the related collection of devices."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# applicableContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content applicable for offering to the related collection of devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogEntryId|String|ID of the catalog entry for the applicable content.|

## Relationships
| Relationship | Type                                                                                       | Description                              |
|:-------------|:-------------------------------------------------------------------------------------------|:-----------------------------------------|
| catalogEntry | [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) | Catalog entry for the update or content. |
|matchedDevices|[microsoft.graph.windowsUpdates.applicableContentDeviceMatch](../resources/windowsupdates-applicablecontentdevicematch.md) collection|Collection of devices and recommendations for applicable catalog content.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContent",
  "keyProperty": "catalogEntryId"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContent",
  "catalogEntryId": "String (identifier)"
}
```
