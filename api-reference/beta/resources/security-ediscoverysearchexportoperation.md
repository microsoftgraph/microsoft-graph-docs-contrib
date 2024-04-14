---
title: "ediscoverySearchExportOperation resource type"
description: "Represents the process of an ediscoverySearch export."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearchExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of an [ediscoverySearch](../resources/security-ediscoverysearch.md) export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`,  `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|additionalOptions|[microsoft.graph.security.additionalOptions](../resources/security-ediscoverysearchexportoperation.md#additionaloptions-values)| The additional items to include in the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|The date and time when the operation was completed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The user who created the operation. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|The date and time when the operation was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|description|String|The name of export provided by the user.|
|displayName|String|The description of the export by the user.|
|exportCriteria|[microsoft.graph.security.exportCriteria](../resources/security-ediscoverysearchexportoperation.md#exportcriteria-values)|Items to be included in the export. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`.|
|exportFileMetadata|[microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md) collection|Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**.|
|exportFormat|[microsoft.graph.security.exportFormat](../resources/security-ediscoverysearchexportoperation.md#exportformat-values)|Format of the emails of the export. The possible values are: `pst`, `msg`, `eml`, `unknownFutureValue`.|
|exportLocation|[microsoft.graph.security.exportLocation](../resources/security-ediscoverysearchexportoperation.md#exportlocation-values)| Locations to be included in the search. The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|
|exportSingleItems|Boolean|Export single items.|
|id|String| The ID for the operation. Read-only. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|percentProgress|Int32|The progress of the operation. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|

### additionalOptions values

|Member|Description|
|:----|-----------|
| none                        | No additional options selected.|
| teamsAndYammerConversations | Collect up to 12 hours of related conversations when a message matches a search.|
| cloudAttachments           | Collect items from links to SharePoint or OneDrive.|
| allDocumentVersions         | Collect all versions of SharePoint documents. If not selected, only current versions are collected.|
| subfolderContents           | Collect items inside subfolders of a matched folder.|
| listAttachments             | Collect files attached to SharePoint lists and their child items.|
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### exportCriteria values

|Member|Description|
|:----|-----------|
| searchHits | Export collected items with search hits.|
| partiallyIndexed | Include partially indexed (unrecognized format, are encrypted, or weren’t indexed for other reasons).|
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### exportFormat values

|Member|Description|
|:----|-----------|
| pst | Mails are grouped in PST format. |
| msg | Include .msg for each message.        |
| eml | Include .eml for each message.        |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### exportLocation values

|Member|Description|
|:----|-----------|
| responsiveLocations    | Locations with search hits only.|
| nonresponsiveLocations | Locations with no search hits.|
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|search|[ediscoverySearch](../resources/security-ediscoverysearch.md)|The eDiscovery searches under each case.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoverySearchExportOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoverySearchExportOperation",
  "action": "String",
  "additionalOptions": "String",
  "completedDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "exportCriteria": "String",
  "exportFileMetadata": [{"@odata.type": "microsoft.graph.security.ediscoveryExportFileMetadata"}],
  "exportFormat": "String",
  "exportLocation": "String",
  "exportSingleItems": "Boolean",
  "id": "String (identifier)",
  "percentProgress": "Int32",
  "resultInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "status": "String"
}
```
