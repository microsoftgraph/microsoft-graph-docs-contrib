---
title: "Online meeting artifacts and permissions in the cloud communications API"
description: "Learn about online meeting artifacts, such as attendance reports and recordings, and the permissions needed to fetch them by using the Microsoft Graph cloud communications API."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: "09/20/2021"
---

# Online meeting artifacts and permissions

Online meeting artifacts are content produced during an online meeting. You can use the 
[Get meetingAttendanceReport](../api-reference/v1.0/resources/meetingattendancereport.md) operation to get the meeting artifacts:

- Attendance report of an online meeting, in the form of a JSON response. Attendance reports have the following characteristics:
  - Only available when the meeting ends
  - Only the meeting organizer can access
  - Includes guest and federated users that were part of the online meeting

## Permissions

The following permissions are available to manage meeting artifacts:

- Delegated (work or school account) - OnlineMeetingArtifact.Read.All
- Delegated (personal Microsoft account)	- Not supported
- Application - OnlineMeetingArtifact.Read.All

To read more about the permission, read the article [Get meetingAttendanceReport.](../api-reference/v1.0/api/meetingattendancereport-get.md#permissions)

## Related content

- [Teams API overview](teams-concept-overview.md)
