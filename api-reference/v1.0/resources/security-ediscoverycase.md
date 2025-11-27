---
title: "ediscoveryCase resource type"
description: "In the context of eDiscovery, contains custodians, holds, collections, and review sets."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/28/2024
---

# ediscoveryCase resource type

Namespace: microsoft.graph.security



In the context of eDiscovery, contains custodians, searches, review sets. For details, see [Overview of Microsoft Purview eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casesroot-list-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) collection|Get a list of the [ediscoveryCase](../resources/security-ediscoverycase.md) objects and their properties.|
|[Create](../api/security-casesroot-post-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Create a new [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Get](../api/security-ediscoverycase-get.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Read the properties and relationships of an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Update](../api/security-ediscoverycase-update.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Update the properties of an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Delete](../api/security-casesroot-delete-ediscoverycases.md)|None|Delete an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Close](../api/security-ediscoverycase-close.md)|None|Close an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[Reopen](../api/security-ediscoverycase-reopen.md)|None|Reopen an [ediscoveryCase](../resources/security-ediscoverycase.md) object.|
|[List custodians](../api/security-ediscoverycase-list-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get the ediscoveryCustodian resources from the custodians navigation property.|
|[Create custodian](../api/security-ediscoverycase-post-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Create a new ediscoveryCustodian object.|
|[List legal holds](../api/security-ediscoverycase-list-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Get the ediscoveryHoldPolicy resources from the legalHolds navigation property.|
|[Delete legal holds](../api/security-ediscoverycase-delete-legalholds.md)|None|Delete an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Create hold policy](../api/security-ediscoverycase-post-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Create a new ediscoveryHoldPolicy object.|
|[List noncustodial data sources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get the ediscoveryNoncustodialDataSource resources from the noncustodialDataSources navigation property.|
|[Create noncustodial data source](../api/security-ediscoverycase-post-noncustodialdatasources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Create a new ediscoveryNoncustodialDataSource object.|
|[List operations](../api/security-ediscoverycase-list-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|Get the caseOperation resources from the operations navigation property.|
|[List review sets](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get the ediscoveryReviewSet resources from the reviewSets navigation property.|
|[Create review set](../api/security-ediscoverycase-post-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Create a new ediscoveryReviewSet object.|
|[List searches](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get the ediscoverySearch resources from the searches navigation property.|
|[Create search](../api/security-ediscoverycase-post-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Create a new ediscoverySearch object.|
|[List tags](../api/security-ediscoverycase-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get the ediscoveryReviewTag resources from the tags navigation property.|
|[Create review tag](../api/security-ediscoverycase-post-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Create a new ediscoveryReviewTag object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|closedBy|[microsoft.graph.identitySet](../resources/identityset.md)|The user who closed the case.|
|closedDateTime|DateTimeOffset|The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the case.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|
|id|String|The ID for the eDiscovery case. Read-only. |
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|The last user who modified the case.
|lastModifiedDateTime|DateTimeOffset|The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|status|microsoft.graph.security.caseStatus|The case status. Possible values are `unknown`, `active`, `pendingDelete`, `closing`, `closed`, and `closedWithError`. For details, see the following table.

### caseStatus values

|Member|Description|
|:----|-----------|
| unknown | Case status is unknown. |
| active | Case is active. |
| pendingDelete | Case was deleted, but the delete has not been fully transacted. |
| closing | Case was closed, but the operation has not been fully transacted. |
| closed | The case is closed. |
| closedWithError | The case is closed, but there were errors releasing holds in the case. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|custodians|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Returns a list of case **ediscoveryCustodian** objects for this **case**.|
|legalHolds|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Returns a list of case **eDiscoveryHoldPolicy** objects for this **case**.|
|noncustodialDataSources|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Returns a list of case **ediscoveryNoncustodialDataSource** objects for this **case**.|
|operations|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|Returns a list of case **caseOperation** objects for this **case**.|
|reviewSets|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Returns a list of **eDiscoveryReviewSet** objects in the case.|
|searches|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Returns a list of **eDiscoverySearch** objects associated with this case.|
|settings|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Returns a list of **eDIscoverySettings** objects in the case.|
|tags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Returns a list of **ediscoveryReviewTag** objects associated to this case.|
|caseMembers|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) collection|Returns a list of **ediscoveryCaseMember** objects associated to this case.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCase",
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

