---
title: "knownIssueHistoryItem resource type"
description: "This resource holds description text for the known issue and is used for maintaining history."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# knownIssueHistoryItem resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 This resource holds description text for the known issue and is used for maintaining history.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time of the creation of the post. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|body| [microsoft.graph.windowsUpdates.ItemBody](.../resources/windowsupdates.itembody.md)| Container for holding content and type. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.knownIssueHistoryItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.knownIssueHistoryItem",
  "createdDateTime": "DateTimeOffset",
  "endOfServiceDateTime": "DateTimeOffset",  
}
```
