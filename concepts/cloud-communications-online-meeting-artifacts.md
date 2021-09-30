---
title: "Online meeting artifacts and permissions"
description: "Find out about online meeting artifacts and what is needed to fetch them."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: "09/20/2021"
---

# Online meeting artifacts and permissions

Online meeting artifacts are content produced for the duration of an online meeting or live event. You can use the [Get onlineMeeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) operation to get the following meeting artifacts: 

- Attendance report of an online meeting, in the form of a JSON response. Attendance reports have the following characteristics:
  - Available for meetings other than live events
  - Only available when the meeting has concluded
  - Only the meeting organizer can access
- Recordings of a live event, in the form of a download link that expires in 60 seconds. Recordings have the following characteristics:
  - Only available for live events
  - Only available when the live event has concluded
  - Only the live event organizer can access
- Attendee report of a live event, in the form of a download link that expires in 60 seconds. Attendee reports have the following characteristics:
  - Only available for live events
  - Only available when the live event has concluded
  - Only the live event organizer can access

## Permissions

The following permissions are available to manage meeting artifacts.

- Delegated (work or school account) - OnlineMeetingArtifact.Read.All
- Application - OnlineMeetingArtifact.Read.All

Only the _OnlineMeetingArtifact.Read.All_ permissions are required to fetch online meeting artifacts. Until **January 15, 2022**, you can use the following permissions to get meeting artifacts in beta:

- _OnlineMeeting.Read_
- _OnlineMeeting.ReadWrite_
- _OnlineMeeting.Read.All_
- _OnlineMeeting.ReadWrite.All_

After that date, the _OnlineMeetingArtifact.Read.All_ permissions will be required to fetch meeting artifacts; requests that do not have those permissions will be rejected.
