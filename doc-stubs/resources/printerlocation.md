---
title: "printerLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerLocation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|altitudeInMeters|Int32|**TODO: Add Description**|
|building|String|**TODO: Add Description**|
|city|String|**TODO: Add Description**|
|countryOrRegion|String|**TODO: Add Description**|
|floor|String|**TODO: Add Description**|
|floorDescription|String|**TODO: Add Description**|
|latitude|Double|**TODO: Add Description**|
|longitude|Double|**TODO: Add Description**|
|organization|String collection|**TODO: Add Description**|
|postalCode|String|**TODO: Add Description**|
|roomDescription|String|**TODO: Add Description**|
|roomName|String|**TODO: Add Description**|
|site|String|**TODO: Add Description**|
|stateOrProvince|String|**TODO: Add Description**|
|streetAddress|String|**TODO: Add Description**|
|subdivision|String collection|**TODO: Add Description**|
|subunit|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerLocation",
  "latitude": "Double",
  "longitude": "Double",
  "altitudeInMeters": "Integer",
  "streetAddress": "String",
  "subunit": [
    "String"
  ],
  "city": "String",
  "postalCode": "String",
  "countryOrRegion": "String",
  "site": "String",
  "building": "String",
  "floor": "String",
  "floorDescription": "String",
  "roomName": "String",
  "roomDescription": "String",
  "organization": [
    "String"
  ],
  "subdivision": [
    "String"
  ],
  "stateOrProvince": "String"
}
```

