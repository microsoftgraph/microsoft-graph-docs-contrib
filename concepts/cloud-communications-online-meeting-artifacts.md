---
title: "Online meeting artifacts and permissions in the cloud communications API"
description: "Learn about online meeting artifacts, such as attendance reports and recordings, and the permissions needed to fetch them by using the Microsoft Graph cloud communications API."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: "11/22/2024"
ms.topic: article
---

# Online meeting artifacts and permissions

Online meeting artifacts are content produced during online meetings and virtual events like webinars. You can use the [Get meetingAttendanceReport](/graph/api/meetingattendancereport-get) method to get the attendance report of an online meeting, in the form of a JSON response. Attendance reports have the following characteristics:

  - They're only available when the meeting ends.
  - Only the meeting organizer can access them.
  - They include guest and federated users that were part of the online meeting.

## Permissions

The following permissions are available to manage meeting artifacts:

- Delegated (work or school account) - OnlineMeetingArtifact.Read.All
- Delegated (personal Microsoft account) - Not supported
- Application - OnlineMeetingArtifact.Read.All

For more information about the permissions for this API, see [Get meetingAttendanceReport](/graph/api/meetingattendancereport-get?view=graph-rest-1.0&tabs=http#permissions).

## Related content

- [Teams API overview](teams-concept-overview.md)
