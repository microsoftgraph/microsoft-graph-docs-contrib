---
title: "ediscoveryCase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryCase resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [case](../resources/security-case.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryCases](../api/security-casesroot-list-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) collection|Get a list of the [ediscoveryCase](../resources/security-ediscoverycase.md) objects and their properties.|
|[Create ediscoveryCase](../api/security-casesroot-post-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Create a new [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Get ediscoveryCase](../api/security-ediscoverycase-get.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Read the properties and relationships of an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Update ediscoveryCase](../api/security-ediscoverycase-update.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Update the properties of an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Delete ediscoveryCase](../api/security-casesroot-delete-ediscoverycases.md)|None|Deletes an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[List custodians](../api/security-ediscoveryfile-list-custodian.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get the ediscoveryCustodian resources from the custodians navigation property.|
|[Create ediscoveryCustodian](../api/security-ediscoverycase-post-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Create a new ediscoveryCustodian object.|
|[List legalHolds](../api/security-ediscoverycase-list-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Get the ediscoveryHoldPolicy resources from the legalHolds navigation property.|
|[Create ediscoveryHoldPolicy](../api/security-ediscoverycase-post-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Create a new ediscoveryHoldPolicy object.|
|[List noncustodialDataSources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get the ediscoveryNoncustodialDataSource resources from the noncustodialDataSources navigation property.|
|[Create ediscoveryNoncustodialDataSource](../api/security-ediscoverycase-post-noncustodialdatasources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Create a new ediscoveryNoncustodialDataSource object.|
|[List operations](../api/security-ediscoverycase-list-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|Get the caseOperation resources from the operations navigation property.|
|[Create caseOperation](../api/security-ediscoverycase-post-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md)|Create a new caseOperation object.|
|[List reviewSets](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get the ediscoveryReviewSet resources from the reviewSets navigation property.|
|[Create ediscoveryReviewSet](../api/security-ediscoverycase-post-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Create a new ediscoveryReviewSet object.|
|[List searches](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get the ediscoverySearch resources from the searches navigation property.|
|[Create ediscoverySearch](../api/security-ediscoverycase-post-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Create a new ediscoverySearch object.|
|[List ediscoveryCaseSettings](../api/security-ediscoverycase-list-settings.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) collection|Get the ediscoveryCaseSettings resources from the settings navigation property.|
|[Create ediscoveryCaseSettings](../api/security-ediscoverycase-post-settings.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Create a new ediscoveryCaseSettings object.|
|[List tags](../api/security-ediscoveryfile-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get the ediscoveryReviewTag resources from the tags navigation property.|
|[Create ediscoveryReviewTag](../api/security-ediscoverycase-post-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Create a new ediscoveryReviewTag object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|closedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [case](../resources/security-case.md).|
|description|String|**TODO: Add Description** Inherited from [case](../resources/security-case.md).|
|displayName|String|**TODO: Add Description** Inherited from [case](../resources/security-case.md).|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [case](../resources/security-case.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [case](../resources/security-case.md).|
|status|caseStatus|**TODO: Add Description** Inherited from [case](../resources/security-case.md).The possible values are: `unknown`, `active`, `pendingDelete`, `closing`, `closed`, `closedWithError`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|custodians|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|**TODO: Add Description**|
|legalHolds|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|**TODO: Add Description**|
|noncustodialDataSources|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|**TODO: Add Description**|
|operations|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|**TODO: Add Description**|
|reviewSets|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|**TODO: Add Description**|
|searches|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|**TODO: Add Description**|
|settings|[ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|**TODO: Add Description**|
|tags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCase",
  "baseType": "microsoft.graph.security.case",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryCase",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String"
}
```

