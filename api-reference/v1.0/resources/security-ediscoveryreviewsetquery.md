---
title: "ediscoveryReviewSetQuery resource type"
description: "Represents a review set query, which is used to query and cull data stored in a Microsoft Purview eDiscovery reviewSet."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryReviewSetQuery resource type

Namespace: microsoft.graph.security



Represents a review set query, which is used to query and cull data stored in a Microsoft Purview eDiscovery [reviewSet](security-ediscoveryreviewset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewSetQueries](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get a list of the [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) objects and their properties.|
|[Create ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Get ediscoveryReviewSetQuery](../api/security-ediscoveryreviewsetquery-get.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Read the properties and relationships of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Update ediscoveryReviewSetQuery](../api/security-ediscoveryreviewsetquery-update.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Update the properties of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Delete ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-delete-queries.md)|None|Delete an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[applyTags](../api/security-ediscoveryreviewsetquery-applytags.md)|None|Apply tags to documents that match the specified query.|
|[export](../api/security-ediscoveryreviewsetquery-export.md)|None|Export documents that match the specified query from a review set.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| createdBy | [identitySet](/graph/api/resources/identityset) | The user who created the query. |
| createdDateTime |DateTimeOffset| The time and date when the query was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
| displayName | String | The name of the query.|
| id |String| The unique identifier of the query. Read-only.|
| lastModifiedBy | [identitySet](/graph/api/resources/identityset) | The user who last modified the query. |
| lastModifiedDateTime |DateTimeOffset | The date and time the query was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
| query | String | The query string in KQL (Keyword Query Language) query. For details, see [Document metadata fields in eDiscovery (Premium)](/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery).  This field maps directly to the keywords condition.  You can refine searches by using fields listed in the *searchable field name* paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*. |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewSetQuery",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSetQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "contentQuery": "String"
}
```

