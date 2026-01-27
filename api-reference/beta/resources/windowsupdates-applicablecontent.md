---
title: "applicableContent resource type"
description: "Represents content applicable for offering to the related collection of devices."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/20/2026
---

# applicableContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content applicable for offering to the related collection of devices.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List applicable content](../api/windowsupdates-policy-list-applicablecontent.md)|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection|List [applicable update content](../resources/windowsupdates-applicablecontent.md) to offer to Microsoft Entra groups, Windows Autopatch groups, or both. |

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
