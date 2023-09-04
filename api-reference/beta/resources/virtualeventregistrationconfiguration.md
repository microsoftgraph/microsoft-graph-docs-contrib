---
title: "virtualEventRegistrationConfiguration resource type"
description: "Represents the registration configuration of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistrationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the registration configuration of a virtual event.

Inherits from [entity](../resources/entity.md).

## Properties

| Property           | Type   | Description                                                                                                                  |
|:-------------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------|
| capacity           | Int32  | Total capacity of the virtual event.                                                                                         |
| id                 | String | Unique identifier for the **virtualEventRegistrationConfiguration** object. Inherited from [entity](../resources/entity.md). |
| registrationWebUrl | String | Registration URL of the virtual event.                                                                                       |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|questions|[virtualEventRegistrationQuestion](../resources/virtualeventregistrationquestion.md) collection|Registration questions.|

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
  "capacity": "Int32",  
  "id": "String (identifier)",
  "registrationWebUrl": "String"
}
```
