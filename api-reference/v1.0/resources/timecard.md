---
title: "timeCard resource type"
description: "Represents a timecard entry in the schedule."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# timeCard resource type

Namespace: microsoft.graph

Represents a timecard entry in the schedule.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/schedule-list-timecards.md)|[timeCard](../resources/timecard.md) collection|Get a list of the **timeCard** objects and their properties.|
|[Create](../api/schedule-post-timecards.md)|[timeCard](../resources/timecard.md)|Create a new **timeCard** object.|
|[Get](../api/timecard-get.md)|[timeCard](../resources/timecard.md)|Read the properties and relationships of a **timeCard** object.|
|[Replace](../api/timecard-replace.md)|[timeCard](../resources/timecard.md)|Replace a **timeCard** object.|
|[Delete](../api/schedule-delete-timecards.md)|None|Delete a timeCard object.|
|[Clock in](../api/timecard-clockin.md)|[timeCard](timecard.md)|Clock in to start a **timeCard**.|
|[Clock out](../api/timecard-clockout.md)|None|Clock out to end an open **timeCard**.|
|[Start break](../api/timecard-startbreak.md)|None|Start a **timeCardBreak** in a specific **timeCard**.|
|[End break](../api/timecard-endbreak.md)|None|End the open **timeCardBreak** in a specific **timeCard**.|
|[Confirm](../api/timecard-confirm.md)|None|Confirm a **timeCard** record.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|breaks|[timeCardBreak](../resources/timecardbreak.md) collection|The list of breaks associated with the **timeCard**.|
|clockInEvent|[timeCardEvent](../resources/timecardevent.md)|The clock-in event of the **timeCard**.|
|clockOutEvent|[timeCardEvent](../resources/timecardevent.md)|The clock-out event of the **timeCard**.|
|confirmedBy|confirmedBy|Indicates whether this **timeCard** entry is confirmed. The possible values are: `none`, `user`, `manager`, `unknownFutureValue`.|
|createdBy|[IdentitySet](../resources/identityset.md)|Identity of the creator of this **timecard**.|
|createdDateTime|DateTimeOffset|The date and time at which the **timeCard** was created.|
|id|String|Unique identifier for the **timeCard**.|
|lastModifiedBy|[IdentitySet](../resources/identityset.md)|Identity of the last modifier of this **timecard**.|
|lastModifiedDateTime|DateTimeOffset|The timestamp in which the **timeCard** was last modified.|
|notes|[itemBody](../resources/itembody.md)|Notes about the **timeCard**.|
|originalEntry|[timeCardEntry](../resources/timecardentry.md)|The original **timeCardEntry** of the **timeCard** before it was edited.|
|state|timeCardState|The current state of the **timeCard** during its life cycle. The possible values are: `clockedIn`, `onBreak`, `clockedOut`, `unknownFutureValue`.|
|userId|String|User ID to which the **timeCard** belongs.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCard",
  "baseType": "microsoft.graph.changeTrackedEntity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.timeCard",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "userId": "String",
  "state": "String",
  "clockInEvent": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "clockOutEvent": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "breaks": [
    {
      "@odata.type": "microsoft.graph.timeCardBreak"
    }
  ],
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "originalEntry": {
    "@odata.type": "microsoft.graph.timeCardEntry"
  },
  "confirmedBy": "String"
}
```

