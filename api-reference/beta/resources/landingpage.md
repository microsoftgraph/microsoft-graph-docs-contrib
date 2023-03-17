---
title: "landingPage resource type"
description: "Represents an attack simulation landing page."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# landingPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation landing page.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List landingPages](../api/simulation-list-landingpage.md)|[landingPage](../resources/landingpage.md) collection|Get a list of the [landingPage](../resources/landingpage.md) objects and their properties.|
|[Get landingPage](../api/landingpage-get.md)|[landingPage](../resources/landingpage.md)|Read the properties and relationships of a [landingPage](../resources/landingpage.md) object.|
|[List details](../api/landingpage-list-details.md)|[landingPageDetail](../resources/landingpagedetail.md) collection|Get the landingPageDetail resources from the details navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Email identity who created landing page.|
|createdDateTime|DateTimeOffset|Date and time of landing page creation.|
|description|String|Description.|
|displayName|String|Display name|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Email identity of the user who updated the landing page.|
|lastModifiedDateTime|DateTimeOffset|Date and time of update.|
|locale|String|Content locale.|
|source|simulationContentSource|Source.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|status.The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|details|[landingPageDetail](../resources/landingpagedetail.md) collection|Fetches landing page details.|

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
  "status": "microsoft.graph.simulationContentStatus",
  "source": "microsoft.graph.simulationContentSource",
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

