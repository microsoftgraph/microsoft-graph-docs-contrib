---
title: "ediscoveryReviewSet resource type"
description: "Represents the static set of electronically stored information collected for use in a litigation, investigation, or regulatory request."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryReviewSet resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the static set of electronically stored information collected for use in a litigation, investigation, or regulatory request.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewSets](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get a list of the [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) objects and their properties.|
|[Create ediscoveryReviewSet](../api/security-ediscoverycase-post-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Create a new [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Get ediscoveryReviewSet](../api/security-ediscoveryreviewset-get.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Read the properties and relationships of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[export](../api/security-ediscoveryreviewset-export.md)|None|Initiate an export of data from a [review set](../resources/security-ediscoveryreviewset.md).|
|[addToReviewSet](../api/security-ediscoveryreviewset-addtoreviewset.md)|None|Start the process of adding a collection from Microsoft 365 services to a [review set](../resources/security-ediscoveryreviewset.md).|
|[List files](../api/security-ediscoveryreviewset-list-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Get the ediscoveryFile resources from the files navigation property.|
|[List queries](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get the list of [queries](../resources/security-ediscoveryreviewsetquery.md) associated with an eDiscovery review set.|
|[Create ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new ediscoveryReviewSetQuery object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The user who created the review set. Read-only. |
|createdDateTime|DateTimeOffset|The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|displayName|String|The review set name. The name is unique with a maximum limit of 64 characters.|
|id|String|The review set unique identifier. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|files|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Represents files within the review set.|
|queries|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Represents queries within the review set.|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

