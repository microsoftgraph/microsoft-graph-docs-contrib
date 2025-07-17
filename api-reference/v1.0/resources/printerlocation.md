---
title: printerLocation resource type
description: Represents the physical and hierarchical location of a printer.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/26/2024
---

# printerLocation resource type

Namespace: microsoft.graph

Represents the physical and hierarchical location of a printer.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|altitudeInMeters|Int32|The altitude, in meters, that the printer is located at.|
|building|String|The building that the printer is located in.|
|city|String|The city that the printer is located in.|
|countryOrRegion|String|The country or region that the printer is located in.|
|floor|String|The floor that the printer is located on. Only numerical values are supported right now.|
|floorDescription|String|The description of the floor that the printer is located on.|
|latitude|Double|The latitude that the printer is located at.|
|longitude|Double|The longitude that the printer is located at.|
|organization|String collection|The organizational hierarchy that the printer belongs to. The elements should be in hierarchical order.|
|postalCode|String|The postal code that the printer is located in.|
|roomDescription|String|The description of the room that the printer is located in.|
|roomName|String|The room that the printer is located in. Only numerical values are supported right now.|
|site|String|The site that the printer is located in.|
|stateOrProvince|String|The state or province that the printer is located in.|
|streetAddress|String|The street address where the printer is located.|
|subdivision|String collection|The subdivision that the printer is located in. The elements should be in hierarchical order.|
|subUnit|String collection|The subunit hierarchy where the printer is located. The elements should be in hierarchical order. For example, if a campus is divided into different sections, the hierarchy might look like this: `["East Wing", "Block A"]`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "subUnit": [
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

