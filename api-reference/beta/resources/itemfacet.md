---
title: "itemFacet resource type"
description: "Represents the abstract base type for the all resource types in the profile entity set."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.service: "microsoft-graph"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 05/14/2024
---

# itemFacet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for all resource types in the [profile](profile.md) entity set.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|allowedAudiences|The audiences that are able to see the values contained within the associated entity. Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity.|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created.|
|id|String|Identifier used for individually addressing an entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity.|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values within an entity originated if synced from another service.|
|sources|[profileSourceAnnotation](../resources/profileSourceAnnotation.md) collection|Where the values within an entity originated if synced from another source.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemFacet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.itemFacet",
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
    "@odata.type": "microsoft.graph.personDataSource"
  },
  "sources": [
    {
      "@odata.type": "microsoft.graph.profileSourceAnnotation"
    }
  ]
}
```



