---
title: "ediscoveryReviewSetQuery resource type"
description: "Represents a review set query, which is used to query and cull data stored in an eDiscovery reviewSet."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ediscoveryReviewSetQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a review set query, which is used to query and cull data stored in an eDiscovery [reviewSet](security-ediscoveryreviewset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get a list of the [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) objects and their properties.|
|[Create](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Get](../api/security-ediscoveryreviewsetquery-get.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Read the properties and relationships of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Update](../api/security-ediscoveryreviewsetquery-update.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Update the properties of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Delete](../api/security-ediscoveryreviewset-delete-queries.md)|None|Delete an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Export](../api/security-ediscoveryreviewsetquery-export.md)|None|Export documents that match the specified query from a review set.|
|[Apply tags](../api/security-ediscoveryreviewsetquery-applytags.md)|None|Apply tags to documents that match the specified query.|
|[Run (preview)](../api/security-ediscoveryreviewsetquery-run.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Get files from the query.|

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
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewSetQuery",
  "baseType": "microsoft.graph.security.ediscoverySearch",
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

