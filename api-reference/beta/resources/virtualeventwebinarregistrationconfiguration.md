---
title: "virtualEventWebinarRegistrationConfiguration resource type"
description: "Contains information about a webinar registration configuration."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 06/20/2024
---

# virtualEventWebinarRegistrationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a webinar registration configuration.

Inherits from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get](../api/virtualeventwebinarregistrationconfiguration-get.md) | [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) | Read the properties and relationships of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object. |

## Properties
| Property           | Type   | Description                                                                                                                  |
|:-------------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------|
| capacity           | Int32  | Total capacity of the virtual event. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| id                 | String | Unique identifier for the **virtualEventRegistrationConfiguration** object. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| isManualApprovalEnabled | Boolean | Indicates whether registrations require organizer approval before a participant is confirmed. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| isWaitlistEnabled | Boolean | Indicates whether more registrants are automatically placed on a waitlist when capacity is reached. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |
| registrationWebUrl | String | Registration portal URL of the webinar. Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| questions | [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection | Registration questions. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "baseType": "microsoft.graph.virtualEventRegistrationConfiguration",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "id": "String (identifier)",
  "registrationWebUrl": "String",
  "capacity": "Int32",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```

