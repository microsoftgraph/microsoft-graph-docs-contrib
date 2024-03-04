---
title: "Product resource type"
description: "Represents a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# Product resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Windows product.

Example of a Windows Product: 

|Name|Example|
|:---|:---|
|Name| Windows 11, version 22H2 |
|Friendly name| Version 22H2 (OS build 22621)|
|Group name| Windows 11 |

Supported Methods: GET

Supported query parameters: filter(eq) name, expand(editions, knownIssues, revisions).
         
## Properties

|Property|Type|Description|
|:---|:---|:---|
|friendlyName|String|The name of the product. Read-only.|
|groupName|String|The name of the product group. Read-only.|
|id|String|The unique identifier for the catalog entry. Read-only.|
|name|String|The name of the product. Read-only.|
|releaseDateTime|DateTimeOffset|The release date for the content. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|editions|[microsoft.graph.windowsUpdates.edition](.../resources/windowsupdates-edition.md) collection| Represents an edition of a particular Windows product. |
|knownIssues|[microsoft.graph.windowsUpdates.knownIssue](.../resources/windowsupdates-knownIssue.md) collection| Represents a known issue related to a Windows product. |
|revisions|[microsoft.graph.windowsUpdates.productrevision](.../resources/windowsupdates-productrevision.md)|Represents a product revision.|

## JSON representation
The following JSON representation shows the resource type.
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
  "groupName": "String",
  "friendlyNames": ["String"],
  "id": "String (identifier)",
  "name": "String"
  "releaseDateTime": "String (timestamp)"
}
```
