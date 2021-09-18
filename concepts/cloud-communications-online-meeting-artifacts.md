---
title: "Online meeting artifacts and permissions"
description: "Find out about online meeting artifacts and what is needed to fetch them."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: "09/20/2021"
---

# Online meeting artifacts and permissions

## Online meeting artifacts

Online meeting artifacts are content produced for the duration of an online meeting or live event. The following meeting artifacts that can be fetched with [Get onlineMeeting](/graph/api/onlinemeeting-get.md) API:

- Attendance report of an online meeting,
  - in the form of a JSON response
  - available for meetings other than live events
  - only available when the meeting has concluded
  - only the meeting organizer can access
- Recordings of a live event
  - in the form of a download link that expires in 60 seconds
  - only available for live events
  - only available when the live event has concluded
  - only the live event organizer can access
- Attendee report of a live event
  - in the form of a download link that expires in 60 seconds
  - only available for live events
  - only available when the live event has concluded
  - only the live event organizer can access

## Permission

The _OnlineMeetingArtifact.Read.All_ permissions have been introduced to manage meeting artifacts.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingArtifact.Read.All              |
| Application                            | OnlineMeetingArtifact.Read.All              |

 Only the _OnlineMeetingArtifact.Read.All_ permissions are required to fetch online meeting artifacts. To keep API consistency, you can still use the following permissions until **January 15, 2022** to get meeting artifacts in beta:

- _OnlineMeeting.Read_
- _OnlineMeeting.ReadWrite_
- _OnlineMeeting.Read.All_
- _OnlineMeeting.ReadWrite.All_

After that, the _OnlineMeetingArtifact.Read.All_ permissions will be required to fetch meeting artifacts and requests without them will be rejected.
