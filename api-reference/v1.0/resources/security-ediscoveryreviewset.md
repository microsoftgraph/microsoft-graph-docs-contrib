---
title: "ediscoveryReviewSet resource type"
description: "Represents the static set of electronically stored information collected for use in a litigation, investigation, or regulatory request."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ediscoveryReviewSet resource type

Namespace: microsoft.graph.security

Represents the static set of electronically stored information collected for use in a litigation, investigation, or regulatory request.

Inherited from [dataSet](../resources/security-dataset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get a list of the [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) objects and their properties.|
|[Create](../api/security-ediscoverycase-post-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Create a new [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Get](../api/security-ediscoveryreviewset-get.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Read the properties and relationships of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Update](../api/security-ediscoveryreviewset-update.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Update the properties of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Export](../api/security-ediscoveryreviewset-export.md)|None|Initiate an export of data from a [review set](../resources/security-ediscoveryreviewset.md).|
|[Add to review set](../api/security-ediscoveryreviewset-addtoreviewset.md)|None|Start the process of adding a collection from Microsoft 365 services to a [review set](../resources/security-ediscoveryreviewset.md).|
|[List queries](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get the list of [queries](../resources/security-ediscoveryreviewsetquery.md) associated with an eDiscovery review set.|
|[Create review set query](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new ediscoveryReviewSetQuery object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The user who created the review set. Read-only. Inherited from [dataSet](../resources/security-dataset.md). |
|createdDateTime|DateTimeOffset|The date and time when the review set was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [dataSet](../resources/security-dataset.md).|
|description|String|The review set description. Inherited from [dataSet](../resources/security-dataset.md).|
|displayName|String|The review set name. The name is unique with a maximum limit of 64 characters. Inherited from [dataSet](../resources/security-dataset.md).|
|id|String|The review set unique identifier. Read-only. Inherited from [dataSet](../resources/security-dataset.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|queries|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Represents queries within the review set.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSet",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)"
}
```

