---
title: "teamsUserActivityUserDetail resource type"
description: "The following is a JSON representaion of the resource."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsUserActivityUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property                                 | Type              |
| :--------------------------------------- | :---------------- |
| reportRefreshDate                        | Date              |
| userPrincipalName                        | String            |
| isLicensed                               | Boolean           |
| lastActivityDate                         | Date              |
| isDeleted                                | Boolean           |
| deletedDate                              | Date              |
| assignedProducts                         | String collection |
| teamChatMessageCount                     | Int64             |
| privateChatMessageCount                  | Int64             |
| callCount                                | Int64             |
| meetingCount                             | Int64             |
| meetingsOrganizedCount                   | Int64             |
| meetingsAttendedCount                    | Int64             |
| adHocMeetingsOrganizedCount              | Int64             |
| adHocMeetingsAttendedCount               | Int64             |
| scheduledOneTimeMeetingsOrganizedCount   | Int64             |
| scheduledOneTimeMeetingsAttendedCount    | Int64             |
| scheduledRecurringMeetingsOrganizedCount | Int64             |
| scheduledRecurringMeetingsAttendedCount  | Int64             |
| audioDuration                            | Duration          |
| videoDuration                            | Duration          |
| screenShareDuration                      | Duration          |
| hasOtherAction                           | Boolean           |
| reportPeriod                             | String            |

## JSON representation

The following is a JSON representaion of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsUserActivityUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "isLicensed": true, 
  "lastActivityDate": "Date", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "assignedProducts": ["String"],
  "teamChatMessageCount": 1024, 
  "privateChatMessageCount": 1024, 
  "callCount": 1024, 
  "meetingCount": 1024, 
  "meetingsOrganizedCount": 1024, 
  "meetingsAttendedCount": 1024, 
  "adHocMeetingsOrganizedCount": 1024, 
  "adHocMeetingsAttendedCount": 1024, 
  "scheduledOneTimeMeetingsOrganizedCount": 1024, 
  "scheduledOneTimeMeetingsAttendedCount": 1024, 
  "scheduledRecurringMeetingsOrganizedCount": 1024, 
  "scheduledRecurringMeetingsAttendedCount": 1024, 
  "audioDuration": 00:00:00, 
  "videoDuration": 00:00:00, 
  "screenShareDuration": 00:00:00, 
  "hasOtherAction": true, 
  "reportPeriod": "String"
}
```


