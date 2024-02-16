---
title: "product resource type"
description: "This EntityType represents a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.prod: "w10"
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
|editions|Navigation property| Represents an edition of a particular Windows product. [Add link] |
|knownIssues|Navigation property| Represents a knonw issue related to a Windows product. [Add link] |
|revisions|Navigation property|Represents product revision.|
|releaseDateTime|DateTimeOffset|The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

Supported Methods: GET

Supported query parameters: filter(eq) name, expand(editions,knownIssues, revisions)

## Relationships
None.

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
