---
title: "virtualEventRegistrationConfiguration resource type"
description: "Represents the registration configuration of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# virtualEventRegistrationConfiguration resource type

Namespace: microsoft.graph

Represents the registration configuration of a [virtualEventWebinar](../resources/virtualeventwebinar.md).

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
|questions|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|Registration questions.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationConfiguration",
  "capacity": "Int32",  
  "id": "String (identifier)",
  "registrationWebUrl": "String"
}
```
