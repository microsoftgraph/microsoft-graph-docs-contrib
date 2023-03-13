---
title: "landingPage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# landingPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List landingPages](../api/simulation-list-landingpage.md)|[landingPage](../resources/landingpage.md) collection|Get a list of the [landingPage](../resources/landingpage.md) objects and their properties.|
|[Create landingPage](../api/simulation-post-landingpage.md)|[landingPage](../resources/landingpage.md)|Create a new [landingPage](../resources/landingpage.md) object.|
|[Get landingPage](../api/landingpage-get.md)|[landingPage](../resources/landingpage.md)|Read the properties and relationships of a [landingPage](../resources/landingpage.md) object.|
|[Update landingPage](../api/landingpage-update.md)|[landingPage](../resources/landingpage.md)|Update the properties of a [landingPage](../resources/landingpage.md) object.|
|[Delete landingPage](../api/simulation-delete-landingpage.md)|None|Delete a [landingPage](../resources/landingpage.md) object.|
|[List details](../api/landingpage-list-details.md)|[landingPageDetail](../resources/landingpagedetail.md) collection|Get the landingPageDetail resources from the details navigation property.|
|[Add landingPageDetail](../api/landingpage-post-details.md)|[landingPageDetail](../resources/landingpagedetail.md)|Add details by posting to the details collection.|
|[Remove details](../api/landingpage-delete-details.md)|None|Remove a [landingPageDetail](../resources/landingpagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|locale|String|**TODO: Add Description**|
|source|simulationContentSource|**TODO: Add Description**.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|details|[landingPageDetail](../resources/landingpagedetail.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.landingPage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.landingPage",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "locale": "String",
  "status": "String",
  "source": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "supportedLocales": [
    "String"
  ]
}
```

