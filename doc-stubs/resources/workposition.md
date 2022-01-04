---
title: "workPosition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# workPosition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workPositions](../api/workposition-list.md)|[workPosition](../resources/workposition.md) collection|Get a list of the [workPosition](../resources/workposition.md) objects and their properties.|
|[Create workPosition](../api/profile-post-positions.md)|[workPosition](../resources/workposition.md)|Create a new [workPosition](../resources/workposition.md) object.|
|[Get workPosition](../api/workposition-get.md)|[workPosition](../resources/workposition.md)|Read the properties and relationships of a [workPosition](../resources/workposition.md) object.|
|[Update workPosition](../api/workposition-update.md)|[workPosition](../resources/workposition.md)|Update the properties of a [workPosition](../resources/workposition.md) object.|
|[Delete workPosition](../api/workposition-delete.md)|None|Deletes a [workPosition](../resources/workposition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|allowedAudiences|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). The possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|**TODO: Add Description**|
|colleagues|[relatedPerson](../resources/relatedperson.md) collection|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[positionDetail](../resources/positiondetail.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|inference|[inferenceData](../resources/inferencedata.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|isCurrent|Boolean|**TODO: Add Description**|
|isSearchable|Boolean|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|manager|[relatedPerson](../resources/relatedperson.md)|**TODO: Add Description**|
|source|[personDataSources](../resources/persondatasources.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPosition",
  "baseType": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workPosition",
  "id": "String (identifier)",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSources"
  },
  "isSearchable": "Boolean",
  "categories": [
    "String"
  ],
  "detail": {
    "@odata.type": "microsoft.graph.positionDetail"
  },
  "manager": {
    "@odata.type": "microsoft.graph.relatedPerson"
  },
  "colleagues": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "isCurrent": "Boolean"
}
```

