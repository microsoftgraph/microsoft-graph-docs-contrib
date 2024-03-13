---
title: "knownIssue resource type"
description: "Represents a known issue related to a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-update-business"
doc_type: resourcePageType
---

# knownIssue resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a known issue related to a Windows product. For example of known issues, see [Windows 11, version 22H2 known issues and notifications](/windows/release-health/status-windows-11-22h2).

## Properties
        
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the particular known issue.|
|id|String|The unique identifier for the entry. Read-only.|
|lastUpdatedDateTime|DateTimeOffset|The date and time when the known issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|resolvedDateTime|DateTimeOffset| The date and time when the known issue was resolved or mitigated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|startDateTime|DateTimeOffset|The date and time when the known issue was first reported. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|status|[microsoft.graph.windowsUpdates.windowsReleaseHealthStatus](../resources/windowsupdates-knownissue.md#windowsreleasehealthstatus-values)|The status of the known issue.|
|title|String|The title of the known issue.|
|webViewUrl|String|The URL to the known issue in the Windows Release Health dashboard on Microsoft 365 admin center.|

### windowsReleaseHealthStatus values

| Member             | Description                                              |
|:-------------------|:---------------------------------------------------------|
| resolved           | Microsoft resolved the known issue.              |
| mitigatedExternal  | An external entity mitigated the known issue.     |
| mitigated          | Microsoft mitigated the known issue.             |
| resolvedExternal   | An external entity resolved the known issue.      |
| confirmed          | Microsoft confirmed the known issue.              |
| reported           | Microsoft acknowledges that the known issue is reported. |
| investigating      | Microsoft is investigating the known issue.              |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.         |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|knownIssueHistories| [microsoft.graph.windowsUpdates.knownIssueHistoryItem](../resources/windowsupdates-knownissuehistoryitem.md) collection| A list of known issue histories.|
|originatingKnowledgeBaseArticle | [microsoft.graph.windowsUpdates.knowledgeBaseArticle](../resources/windowsupdates-knowledgebasearticle.md) collection |Knowledge base article associated with the release when the known issue was first reported. |
|resolvingKnowledgeBaseArticle| [microsoft.graph.windowsUpdates.knowledgeBaseArticle](../resources/windowsupdates-knowledgebasearticle.md) collection|Knowledge base article associated with the release when the known issue was resolved or mitigated. |
|safeguardHoldIds|Int32 collection|A list of safeguard hold IDs associated with the known issue.|

## JSON representation

The following JSON representation shows the resource type.

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
  "description": "String",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "resolvedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "status": "String",
  "title": "String",
  "webViewUrl": "String"
}
```
