---
title: "product resource type"
description: "This EntityType represents a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# product resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an Entity type that represents a specific Windows product. 

Examples: 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the catalog entry. Read-only.|
|name|String|The name of the product. Read-only.|
|groupName|String|The name of the product group. Read-only.|
|friendlyName|String|The name of the product. Read-only.|
|releaseDateTime|DateTimeOffset|The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

Supported Methods: GET

Supported query parameters: filter(eq) name, expand(editions,knownIssues, revisions)

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|editions|[microsoft.graph.windowsUpdates.edition](.../resources/windowsupdates-edition.md) collection| Represents an edition of a particular Windows product. |
|knownIssues|[microsoft.graph.windowsUpdates.knownIssue](.../resources/windowsupdates-knownIssue.md) collection| Represents a knonw issue related to a Windows product. |
|revisions|[microsoft.graph.windowsUpdates.productrevision](.../resources/windowsupdates-productrevision.md)|Represents a product revision.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.product",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.product",
  "id": "String (identifier)",
  "name": "String",
  "groupName": "String",
  "friendlyNames": "Collection(Edm.String)",
  "editions": "Collection(microsoft.graph.windowsUpdates.edition)",
  "knownIssues": "Collection(microsoft.graph.windowsUpdates.knownIssue)", 
  "revisions": "Collection(microsoft.graph.windowsUpdates.productRevision)"
}
```
