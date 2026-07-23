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

Represents the registration configuration of a virtual event, such as a webinar or town hall.
Base type of [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) and [virtualEventTownhallRegistrationConfiguration](../resources/virtualeventtownhallregistrationconfiguration.md).

Inherits from [entity](../resources/entity.md).

## Properties

| Property           | Type   | Description                                                                                                                  |
|:-------------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------|
| capacity           | Int32  | Total capacity of the virtual event.                                                                                         |
| id                 | String | Unique identifier for the **virtualEventRegistrationConfiguration** object. Inherited from [entity](../resources/entity.md). |
| isManualApprovalEnabled | Boolean | Indicates whether registrations require organizer approval before a participant is confirmed. |
| isWaitlistEnabled | Boolean | Indicates whether more registrants are automatically placed on a waitlist when capacity is reached. |
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
  "isManualApprovalEnabled": "Boolean",
  "isWaitlistEnabled": "Boolean",
  "registrationWebUrl": "String"
}
```
