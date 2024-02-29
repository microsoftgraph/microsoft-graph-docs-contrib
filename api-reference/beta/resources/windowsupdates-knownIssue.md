---
title: "knownIssue resource type"
description: "This Entity Type represents a known issue related to a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# knownIssue resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This Entity Type represents a known issue related to a Windows product. 


## Properties
        
|Property|Type|Description|
|:---|:---|:---|
|ID|String|The identifier for the entry. Read-only.|
|status|String|The Status of the known issue.|
|webViewUrl|String|The URL to the known issue in the Windows Release Health dashboard on Microsoft 365 admin center.|
|description|String|The description of the particular known issue.|
|startDateTime|DateTimeOffset|The date and time when the known issue was first reported. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|title|String|The title of the known issue.|
|resolvedDateTime|DateTimeOffset| The date and time when the known issue was resolved or mitigated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastUpdatedDateTime|DateTimeOffset|The date and time when the known issue was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

Supported Methods: GET

Supported query parameters: filter(eq) status, filter(ge, le) startDateTime, filter(ge, le) lastUpdatedDateTime, filter(ge, le) resolvedDateTime

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|originatingKnowledgeBaseArticle | [microsoft.graph.windowsUpdates.knowledgebasearticle](../resources/windowsupdates-knowledgebasearticle.md) collection |Knowledge base article associated with the release when the known issue was first reported. |
|resolvingKnowledgeBaseArticle| [microsoft.graph.windowsUpdates.knowledgebasearticle](../resources/windowsupdates-knowledgebasearticle.md) collection|Knowledge base article associated with the release when the known issue was resolved or mitigated. |
|safeguardHoldIds|Edm.Int32 collection|A list of safeguard hold ids associated with the known issue.|


## JSON representation
The following code is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.knownIssue",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.knowsIssue",
  "id": "String (identifier)",
  "status": "String",
  "webViewUrl": "String",
  "description": "String",
  "startDateTime": "DateTimeOffset",
  "title": "string",
  "resolvedDateTime": "DateTimeOffset",
  "lastUpdatedDateTime": "DateTimeOffset",
  "originatingKnowledgeBaseArticle": "microsoft.graph.windowsUpdates.knowledgeBaseArticle", 
  "resolvingKnowledgeBaseArticle": "microsoft.graph.windowsUpdates.knowledgeBaseArticle",
  "safeguardHoldIds": "Collection(Edm.Int32)", 
  "knownIssueHistories": "Collection(microsoft.graph.windowsUpdates.knownIssueHistoryItem)"
 
}
```
