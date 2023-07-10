---
title: "qualityUpdateCatalogEntry resource type"
description: "Represents a product revision that is associated with a quality update"
author: "angiechen22"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# productRevision resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a product revision that is associated with a quality update.

When a quality update is released, it includes one or more product revisions to operating system builds. The taxonomy of a product revision is `majorVersion`.`minorVersion`.`buildNumber`.`updateBuildRevision`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the content. Read-only.|
|id|String|The unique identifier for the product revision. Read-only.|
|releaseDateTime|DateTimeOffset|The release date for the content. Read-only.|
|version|String|The version of the feature update. Read-only.|
|osBuild|microsoft.graph.windowsUpdates.buildVersionDetails|The version details of the product revision. Read-only.|

## Relationships
|Property|Type|Description|
|:---|:---|:---|
|knowledgeBaseArticle|[microsoft.graph.windowsUpdates.knowledgeBaseArticle](../resources/windowsupdates-knowledgebasearticle.md)|Knowledge base article associated with the product revision.|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String",
  "displayName": "String",
  "releaseDateTime": "String(timestamp)",
  "version": "String",
  "osBuild": {
    "majorVersion": "Integer",
    "minorVersion": "Integer",
    "buildNumber": "Integer",
    "updateBuildRevision": "Integer"
  }
}
```
