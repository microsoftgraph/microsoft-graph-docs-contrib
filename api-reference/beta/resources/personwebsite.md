---
title: "personWebsite resource type"
description: "Represents detailed information about websites associated with a user in various services."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# personWebsite resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about websites associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/profile-list-websites.md)|[personWebsite](../resources/personwebsite.md) collection|Get the [personWebsite](../resources/personwebsite.md) resources from the **websites** navigation property.|
|[Create](../api/profile-post-websites.md)|[personWebsite](../resources/personwebsite.md)|Create a new [personWebsite](../resources/personwebsite.md) object.|
|[Get](../api/personwebsite-get.md)|[personWebsite](../resources/personwebsite.md)|Read the properties and relationships of a [personWebsite](../resources/personwebsite.md) object.|
|[Update](../api/personwebsite-update.md)|[personWebsite](../resources/personwebsite.md)|Update the properties of a [personWebsite](../resources/personwebsite.md) object.|
|[Delete](../api/personwebsite-delete.md)|None|Delete a [personWebsite](../resources/personwebsite.md) object.|

## Properties

| Property     | Type              | Description                                                                                   |
|:-------------|:------------------|:----------------------------------------------------------------------------------------------|
|categories    |String collection  | Contains categories a user has associated with the website (for example, personal, recipes).  |
|description   |String             | Contains a description of the website.                                                        |
|displayName   |String             | Contains a friendly name for the website.                                                     |
|webUrl        |String             | Contains a link to the website itself.                                                        |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personWebsite",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personWebsite",
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
  "categories": [
    "String"
  ],
  "description": "String",
  "displayName": "String",
  "webUrl": "String"
}
```


