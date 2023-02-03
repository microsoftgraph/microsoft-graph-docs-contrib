---
title: "caseOperation resource type"
description: "An abstract entity that represents a long-running eDiscovery process."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# caseOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract entity that represents a long-running eDiscovery process. It contains a common set of properties that are shared among inheriting entities. Entities that derive from **caseOperation** include:

- [Index operation](../resources/security-ediscoveryindexoperation.md)
- [Hold operation](../resources/security-ediscoveryholdoperation.md)
- [Purge data operation](../resources/security-ediscoverypurgedataoperation.md)
- [Estimate operation](../resources/security-ediscoveryestimateoperation.md)
- [Add to review set operation](../resources/security-ediscoveryaddtoreviewsetoperation.md)
- [Tag operation](../resources/security-ediscoverytagoperation.md)
- [Export operation](../resources/security-ediscoveryexportoperation.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List caseOperations](../api/security-ediscoverycase-list-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|Get a list of the [caseOperation](../resources/security-caseoperation.md) objects and their properties.|
|[Get caseOperation](../api/security-caseoperation-get.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md)|Read the properties and relationships of a [caseOperation](../resources/security-caseoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. |
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. |
|createdDateTime|DateTimeOffset| The date and time the operation was created. |
|id|String| The ID for the operation. Read-only. |
|percentProgress|Int32| The progress of the operation. |
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. |
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### caseAction values

|Member|Description|
|:----|-----------|
| addToReviewSet | The operation represents adding data to a review set from an eDiscovery collection. |
| applyTags | The operation represents bulk tagging documents in a review set for the specified review set query. |
| contentExport | The operation represents a content export from a review set. |
| convertToPdf | The operation represents converting documents to PDFs with redactions. |
| estimateStatistics  | The operation represents searching against Microsoft 365 services such as Exchange, SharePoint, and OneDrive for Business. |
| holdUpdate | The operation represent updating legal hold (apply/remove) for custodians and non-custodial data sources.
| index | The operation represents indexing data sources of custodians and non-custodial data sources to make them searchable. |
| purgeData | The operation represents purging content from the source workloads. |

### caseOperationStatus values

|Member|Description|
|:----|-----------|
| notStarted | The operation has not yet started. |
| submissionFailed | Submission of the operation failed. |
| running | The operation is currently running. |
| succeeded | The operation was successfully completed without any errors. |
| partiallySucceeded | The operation completed, but there were errors. For error details, see [resultInfo](../resources/resultinfo.md). |
| failed | The operation failed. For error details, see [resultInfo](../resources/resultinfo.md). |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseOperation",
  "action": "String",
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "percentProgress": "Int32",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "status": "String"
}
```
