---
title: "productRevision resource type"
description: "Represents a product revision that is associated with a quality update."
author: "Ryan-K-Williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# productRevision resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a product revision that is associated with a quality update.

When a quality update is released, it includes one or more product revisions to operating system builds. The taxonomy of a product revision is `majorVersion.minorVersion.buildNumber.updateBuildRevision`.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the content. Read-only.|
|id|String|The unique identifier for the product revision. Read-only.|
|isHotpatchUpdate|Boolean|`True` indicates that the content is hotpatchable; otherwise, `false`. For more information, see [Deploy a hotpatch quality update](/graph/windowsupdates-hotpatch-update) using Windows Autopatch. Read-only.|
|osBuild|[microsoft.graph.windowsUpdates.buildVersionDetails](../resources/windowsupdates-buildversiondetails.md)|The version details of the product revision. Read-only.|
|product|String|The product of the revision. Possible values are: `Windows 10`, `Windows 11`. Read-only.|
|releaseDateTime|DateTimeOffset|The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|version|String|The version of the feature update. Read-only.|

## Relationships

|Property|Type|Description|
|:---|:---|:---|
|knowledgeBaseArticle|[microsoft.graph.windowsUpdates.knowledgeBaseArticle](../resources/windowsupdates-knowledgebasearticle.md)|The knowledge base article associated with the product revision.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.productRevision",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.productRevision",
  "displayName": "String",
  "id": "String (identifier)",
  "isHotpatchUpdate": "Boolean",
  "osBuild": { "@odata.type": "microsoft.graph.windowsUpdates.buildVersionDetails" },
  "product": "String",
  "releaseDateTime": "String (timestamp)",
  "version": "String"
}
```
