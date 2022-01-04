---
title: "projectParticipation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# projectParticipation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List projectParticipations](../api/projectparticipation-list.md)|[projectParticipation](../resources/projectparticipation.md) collection|Get a list of the [projectParticipation](../resources/projectparticipation.md) objects and their properties.|
|[Create projectParticipation](../api/profile-post-projects.md)|[projectParticipation](../resources/projectparticipation.md)|Create a new [projectParticipation](../resources/projectparticipation.md) object.|
|[Get projectParticipation](../api/projectparticipation-get.md)|[projectParticipation](../resources/projectparticipation.md)|Read the properties and relationships of a [projectParticipation](../resources/projectparticipation.md) object.|
|[Update projectParticipation](../api/projectparticipation-update.md)|[projectParticipation](../resources/projectparticipation.md)|Update the properties of a [projectParticipation](../resources/projectparticipation.md) object.|
|[Delete projectParticipation](../api/projectparticipation-delete.md)|None|Deletes a [projectParticipation](../resources/projectparticipation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|allowedAudiences|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). The possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|**TODO: Add Description**|
|client|[companyDetail](../resources/companydetail.md)|**TODO: Add Description**|
|collaborationTags|String collection|**TODO: Add Description**|
|colleagues|[relatedPerson](../resources/relatedperson.md) collection|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[positionDetail](../resources/positiondetail.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|inference|[inferenceData](../resources/inferencedata.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|isSearchable|Boolean|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSources](../resources/persondatasources.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md).|
|sponsors|[relatedPerson](../resources/relatedperson.md) collection|**TODO: Add Description**|
|thumbnailUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.projectParticipation",
  "baseType": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.projectParticipation",
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
  "client": {
    "@odata.type": "microsoft.graph.companyDetail"
  },
  "displayName": "String",
  "detail": {
    "@odata.type": "microsoft.graph.positionDetail"
  },
  "colleagues": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "sponsors": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "collaborationTags": [
    "String"
  ],
  "thumbnailUrl": "String"
}
```

