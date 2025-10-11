---
title: "ediscoveryAddToReviewSetOperation resource type"
description: "Represents an operation to add an eDiscoverySearch to an eDiscoveryReviewSet."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/30/2024
---

# ediscoveryAddToReviewSetOperation resource type

Namespace: microsoft.graph.security



Represents an operation to add an [eDiscoverySearch](../resources/security-ediscoverysearch.md) to an [eDiscoveryReviewSet](../resources/security-ediscoveryreviewset.md).

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`, `holdPolicySync`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`, `holdPolicySync`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|additionalDataOptions|[microsoft.graph.security.additionalDataOptions](#additionaldataoptions-values)| The options to add items to the review set. Possible values are: `allVersions`, `linkedFiles`, `unknownFutureValue`, `advancedIndexing`, `listAttachments`, `htmlTranscripts`, `messageConversationExpansion`, `locationsWithoutHits`, `allItemsInFolder`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `advancedIndexing`, `listAttachments`, `htmlTranscripts`, `messageConversationExpansion`, `locationsWithoutHits`, `allItemsInFolder`.|
|cloudAttachmentVersion|microsoft.graph.security.cloudAttachmentVersion| Specifies the number of most recent versions of cloud attachments to collect. Possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. |
|completedDateTime|DateTimeOffset| The date and time the operation was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the operation was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|documentVersion|microsoft.graph.security.documentVersion| Specifies the number of most recent versions of SharePoint documents to collect. Possible values are: `latest`, `recent10`, `recent100`, `all`, `unknownFutureValue`. |
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|itemsToInclude|[microsoft.graph.security.itemsToInclude](#itemstoinclude-values)| The items to include in the review set. Possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|reportFileMetadata|[microsoft.graph.security.reportFileMetadata](../resources/security-ediscoveryreportfilemetadata.md) collection|Contains the properties for report file metadata, including **downloadUrl**, **fileName**, and **size**.|
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|microsoft.graph.security.caseOperationStatus| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. Inherited from [caseOperation](../resources/security-caseoperation.md).|

### additionalDataOptions values

|Name|Description|
|:---|:---|
|allVersions| Include all versions of a SharePoint document that match the source collection query. Caution: SharePoint versions can significantly increase the volume of items. |
|linkedFiles| Include linked files shared in Outlook, Teams, or Engage messages by attaching a link to the file.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
|advancedIndexing| To reduce false matches, perform advanced indexing during export.|
|listAttachments| Include list attachments.|
|htmlTranscripts| Contextual chat messages are threaded into HTML transcript.|
|messageConversationExpansion| Include conversation context around a hit.|
|locationsWithoutHits| Look for unindexed items even in locations without hits.|
|allItemsInFolder| Include all content in the folder if the folder itself matches a query.|

### itemsToInclude values

|Member|Description|
|:----|:----------|
|searchHits       | Include indexed items that match.|
|partiallyIndexed | Include unindexed items that might not match the query.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|eDiscovery review set to which items matching source collection query gets added.|
|search|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|eDiscovery search that gets added to review set.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryAddToReviewSetOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryAddToReviewSetOperation",
  "action": "String",
  "additionalDataOptions": "String",
  "cloudAttachmentVersion": "String",
  "completedDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "documentVersion": "String",
  "id": "String (identifier)",
  "itemsToInclude": "String",
  "percentProgress": "Int32",
  "reportFileMetadata": [{"@odata.type": "microsoft.graph.reportFileMetadata"}],
  "resultInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "status": "String"
}
```

