---
title: "Online meeting artifacts and permissions in the cloud communications API"
description: "Learn about online meeting artifacts, such as attendance reports and recordings, and the permissions needed to fetch them by using the Microsoft Graph cloud communications API."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: "09/20/2021"
---

# Online meeting artifacts and permissions

Online meeting artifacts are content produced for the duration of an online meeting or [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). You can use the [Get onlineMeeting](/graph/api/onlinemeeting-get) operation to get the following meeting artifacts:

- Attendance report of an online meeting, in the form of a JSON response. Attendance reports have the following characteristics:
  - Available for meetings other than Teams live events
  - Only available when the meeting has concluded
  - Only the meeting organizer can access
  - Includes guest and federated users that were part of the online meeting
- Recordings of a Teams live event, in the form of a download link that expires in 60 seconds. Recordings have the following characteristics:
  - Only available for Teams live events
  - Only available when the Teams live event has concluded
  - Only the Teams live event organizer can access
- Attendee report of a Teams live event, in the form of a download link that expires in 60 seconds. Attendee reports have the following characteristics:
  - Only available for Teams live events
  - Only available when the Teams live event has concluded
  - Only the Teams live event organizer can access

## Permissions

The following permissions are available to manage meeting artifacts:

- Delegated (work or school account) - OnlineMeetingArtifact.Read.All
- Application - OnlineMeetingArtifact.Read.All

Only the _OnlineMeetingArtifact.Read.All_ permissions are required to fetch online meeting artifacts. Until **January 15, 2022**, you can use the following permissions to get meeting artifacts in beta:

- _OnlineMeeting.Read_
- _OnlineMeeting.ReadWrite_
- _OnlineMeeting.Read.All_
- _OnlineMeeting.ReadWrite.All_

After that date, the _OnlineMeetingArtifact.Read.All_ permissions will be required to fetch meeting artifacts; requests that do not have those permissions will be rejected.

## See also

- [Teams API overview](teams-concept-overview.md)
