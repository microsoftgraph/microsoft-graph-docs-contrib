---
title: "caseOperation resource type"
description: "Case operation abstract base class"
localization_priority: Normal
author: "mahage-msft"
ms.prod: "compliance"
doc_type: resourcePageType
---

# caseOperation resource type

Namespace: microsoft.graph

**caseOperation** is an abstract entity that represents a long running eDiscovery process. It contains a common set of properties that are shared amongst inheriting entities.  Entities that derive from **caseOperation** include:

- [caseExportOperation](../resources/caseexportoperation.md)

Inherits from [entity](../resources/entity.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|caseAction| The type of action the operation represents. Possible values are: `contentExport`, `tag`, `convertToPdf`, `index`, `search`, `addDataToReviewSet`.|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. |
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. |
|createdDateTime|DateTimeOffset| The date and time the operation was created. |
|id|String| The ID for the operation. Read-only. |
|percentProgress|Int32| The progress of the operation. |
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. |
|status|caseOperationStatus| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### caseAction values

|Member|Description|
|:----|-----------|
| `contentExport` | The operation represents a content export. |
| `tag` | The operation represents bulk tagging documents in a review set. |
| `convertToPdf` | The operation represents converting documents to PDFs with redactions. |
| `index` | The operation represents initiation of re-indexing a custodian's index. |
| `search`  | The operation represents searching against Microsoft 365 services such as Exchange, SharePoint and OneDrive for business. |
| `addDataToReviewSet` | The operation represents adding data to a review set from an eDiscovery collection. |

### caseOperationStatus values

|Member|Description|
|:----|-----------|
| notStarted | The operation has not yet started. |
| submissionFailed | Submission of the operation failed. |
| running | The operation is currently running. |
| succeeded | The operation was successfully completed without any errors. |
| partiallySucceeded | The operation completed, but there were errors - See result info for error details. |
| failed | The operation failed - See result info for error details. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.caseOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.caseOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```
