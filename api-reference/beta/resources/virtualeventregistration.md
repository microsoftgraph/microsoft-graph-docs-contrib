---
title: "virtualEventRegistration resource type"
description: "Information about a virtual event registration."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the registration configuration of a virtual event.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|capacity|Int32|Total capacity of the virtual event.|
|registrationWebUrl|String|Registration URL of the virtual event.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|questions|[virtualEventRegistrationQuestion](../resources/virtualeventregistrationquestion.md) collection|Registration questions.|
|registrants|[virtualEventRegistrant](../resources/virtualeventregistrant.md) collection|Information of attendees who have registered for the virtual event.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "capacity": "Integer",  
  "id": "String (identifier)",
  "registrationWebUrl": "String"
}
```
