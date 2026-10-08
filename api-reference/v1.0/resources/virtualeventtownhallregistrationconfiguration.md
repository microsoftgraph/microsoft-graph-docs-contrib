---
title: "virtualEventTownhallRegistrationConfiguration resource type"
description: "Contains information about a town hall registration configuration."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 06/19/2026
---

# virtualEventTownhallRegistrationConfiguration resource type

Namespace: microsoft.graph

Contains information about a town hall registration configuration.

Inherits from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get](../api/virtualeventtownhallregistrationconfiguration-get.md) | [virtualEventTownhallRegistrationConfiguration](../resources/virtualeventtownhallregistrationconfiguration.md) | Read the properties and relationships of a [virtualEventTownhallRegistrationConfiguration](../resources/virtualeventtownhallregistrationconfiguration.md) object. |

## Properties

| Property           | Type   | Description                                                                                                                  |
|:-------------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------|
| capacity           | Int32  | Total capacity of the town hall. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| id                 | String | Unique identifier for the **virtualEventRegistrationConfiguration** object. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| isManualApprovalEnabled | Boolean | Indicates whether registrations require organizer approval before a participant is confirmed. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| isWaitlistEnabled | Boolean | Indicates whether more registrants are automatically placed on a waitlist when capacity is reached. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| registrationWebUrl | String | Registration portal URL of the town hall. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| questions | [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection | Registration questions. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventTownhallRegistrationConfiguration",
  "baseType": "microsoft.graph.virtualEventRegistrationConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventTownhallRegistrationConfiguration",
  "id": "String (identifier)",
  "registrationWebUrl": "String",
  "capacity": "Int32",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```
