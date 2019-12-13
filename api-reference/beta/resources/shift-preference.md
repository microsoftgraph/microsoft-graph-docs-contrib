---
title: "shift preference resource type"
description: "A shift preference is the user's availability to be assigned shifts in the schedule."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# shift preference resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A shift preference is the user's availability to be assigned shifts in the [schedule](schedule.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get shift preference](../api/shiftpreference-get.md) | [shift preference](shift-preference.md) | Get a user's `shift preference`.|
|[Update shift preference](../api/shiftpreference-put.md) | None | Update a user's `shift preference`.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | `Edm.String` | The identifier of the entity. |
| @odata.etag | `Edm.String` | The change key for the entity. |
| availability | `Collection(graph.microsoft.shiftAvailability)` |
| createdDateTime | `Edm.DateTimeOffset` | Timestamp corresponding to when the entity was created. |
| lastModifiedDateTime | `Edm.DateTimeOffset` | Timestamp corresponding to when the entity was last modified. |
| lastModifiedBy | `self.IdentitySet` | Identity of the person who last modified the entity. |

#### shiftAvailability
##### Properties
|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
| `recurrence` | [patternedRecurrence] | Specifies the pattern for recurrence | No  | Yes | no |
| `timeZone` | `string` | Specifies the time zone for the indicated time | No  | Yes | No |
| `timeSlots` | `Collection(graph.microsoft.timeRange)` | The time slot(s) preferred by the user.| No  | Yes | No |

> The public MS Graph documentation for `graph.microsoft.patternedRecurrence` is [here](https://docs.microsoft.com/en-us/graph/api/resources/patternedrecurrence?view=graph-rest-1.0).

##### CSDL
```xml
<ComplexType Name="shiftPreferenceItem">
    <Property Name="recurrence" Type="self.patternedRecurrence"/>
    <Property Name="timeZone" Type="Edm.String" />
    <Property Name="timeSlots" Type="Collection(self.timeSlot)" />
</ComplexType>
```

#### TimeRange
##### Properties
|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
| `startTime` | `Edm.TimeOfDay` | Specifies the start of the time slot. | No  | Yes | No |
| `endTime` | `Edm.TimeOfDay` | Specifies the end of the time slot. | No  | Yes | No |

##### CSDL
```xml
<ComplexType Name="timeRange">
    <Property Name="startTime" Type="Edm.TimeOfDay"/>
    <Property Name="endTime" Type="Edm.TimeOfDay" />
</ComplexType>
```

##### CSDL
```xml
<EntityType Name="userSettings" BaseType="microsoft.graph.entity">

  <!-- Existing properties not shown -->

  <NavigationProperty Name="shiftPreferences" Type="self.shiftPreferences" ContainsTarget="true" />

</EntityType>

```
## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id"
}-->

```json
{
    "id": "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
    "@odata.etag": "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",
    "availability": [
        {
            "recurrence": {
                "pattern": {
                    "type": "Weekly",
                    "daysOfWeek": ["Tuesday"],
                    "interval": 1
                },
                "range": {
                    "type": "noEnd"
                }
            },
            "timeZone": "Pacific Standard Time",
            "timeSlots": [
                {
                    "startTime": "09:15:00.000",
                    "endTime": "12:30:00.000"
                },
                {
                    "startTime": "16:00:00.000",
                    "endTime": "20:00:00.000"
                }
            ]
        }
    ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "shift preference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
