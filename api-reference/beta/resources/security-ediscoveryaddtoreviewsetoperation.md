---
title: "ediscoveryAddToReviewSetOperation resource type"
description: "Adds the results of a sourceCollection to a reviewSet"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/31/2024
---

# ediscoveryAddToReviewSetOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation to add a [eDiscoverySearch](../resources/security-ediscoverysearch.md) to a [eDiscoveryReviewSet](../resources/security-ediscoveryreviewset.md).

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `ooocontentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-futu`re-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the operation was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|microsoft.graph.security.caseOperationStatus| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|additionalDataOptions|String| The options for adding items to reviewSet. |
|cloudAttachmentVersion|String| How many most recent versions of cloud attachments to collect.|
|documentVersion|String| How many most recent versions of SharePoint documents to collect.|
|itemsToInclude|String| The items to include in the review set. Possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`.|

### additionalDataOptions values
|Name|Description|
|:---|:---|
|allVersions|include all versions of a sharepoint document matching the source collection query. Caution: SharePoint versions can significantly increase the volume of items |
|linkedFiles|include linked files that were shared in outlook, teams, or Yammer messages by attaching a link to the file.|
|advancedIndexing|To reduce false matches, perform advanced indexing during export.|
|listAttachments|Include list attachments.|
|htmlTranscripts|Contextual chat messages are threaded into HTML transcript.|
|messageConversationExpansion|Include conversation context around a hit.|
|locationsWithoutHits|Look for unindexed items even in locations without hits.|
|allItemsInFolder|Include all content in folder if the folder itself matches a query.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### itemsToInclude values
|Member|Description|
|:----|-----------|
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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "percentProgress": "Integer",
  "status": "String",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "additionalDataOptions": "String",
  "cloudAttachmentVersion": "String",
  "documentVersion": "String",
  "itemsToInclude": "String"
}
```

