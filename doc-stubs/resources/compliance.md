---
title: "compliance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# compliance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List compliances](../api/compliance-list.md)|[compliance](../resources/compliance.md) collection|Get a list of the [compliance](../resources/compliance.md) objects and their properties.|
|[Create compliance](../api/compliance-create.md)|[compliance](../resources/compliance.md)|Create a new [compliance](../resources/compliance.md) object.|
|[Get compliance](../api/compliance-get.md)|[compliance](../resources/compliance.md)|Read the properties and relationships of a [compliance](../resources/compliance.md) object.|
|[Update compliance](../api/compliance-update.md)|[compliance](../resources/compliance.md)|Update the properties of a [compliance](../resources/compliance.md) object.|
|[Delete compliance](../api/compliance-delete.md)|None|Deletes a [compliance](../resources/compliance.md) object.|
|[List dataSubjectRequests](../api/compliance-list-datasubjectrequests.md)|[dataSubjectRequest](../resources/datasubjectrequest.md) collection|Get the dataSubjectRequest resources from the dataSubjectRequests navigation property.|
|[Create dataSubjectRequest](../api/compliance-post-datasubjectrequests.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Create a new dataSubjectRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataSubjectRequests|[dataSubjectRequest](../resources/datasubjectrequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.compliance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.compliance"
}
```

