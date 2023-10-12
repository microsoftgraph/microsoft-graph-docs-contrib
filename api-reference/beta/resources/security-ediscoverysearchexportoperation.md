---
title: "ediscoverySearchExportOperation resource type"
description: "**TODO: Add Description**"
author: "**himadrinayak**"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearchExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.caseAction|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData` , `exportReport` , `exportResult`.|
|additionalOptions|microsoft.graph.security.additionalOptions|**TODO: Add Description**.The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|exportCriteria|microsoft.graph.security.exportCriteria|**TODO: Add Description**.The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`.|
|exportFileMetadata|[microsoft.graph.security.exportFileMetadata](../resources/security-exportfilemetadata.md) collection|**TODO: Add Description**|
|exportFormat|microsoft.graph.security.exportFormat|**TODO: Add Description**.The possible values are: `pst`, `msg`, `eml`, `unknownFutureValue`.|
|exportLocation|microsoft.graph.security.exportLocation|**TODO: Add Description**.The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|
|exportSingleItems|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|percentProgress|Int32|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|status|microsoft.graph.security.caseOperationStatus|**TODO: Add Description** Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|search|[ediscoverySearch](../resources/security-ediscoverysearch.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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
  "displayName": "String",
  "description": "String",
  "exportCriteria": "String",
  "exportLocation": "String",
  "additionalOptions": "String",
  "exportFormat": "String",
  "exportFileMetadata": [
    {
      "@odata.type": "microsoft.graph.security.exportFileMetadata"
    }
  ],
  "exportSingleItems": "Boolean"
}
```

