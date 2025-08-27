---
title: "Teams meeting type and Microsoft Graph APIs"
description: "Consider when to use online meetings, webinar, or town hall Microsoft Graph APIs for Teams meetings."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/18/2024
ms.topic: article
---

# Choose the right Teams meeting type

Microsoft Teams and Microsoft Graph support multiple types of scheduled real-time voice and video experiences, ranging from ad hoc meetings that are suitable for a few participants to large, structured virtual events like webinars and town halls with thousands of attendees.

Use the following table to choose the right meeting type and Microsoft Graph APIs for your use case. 

|Teams meeting type  | Microsoft Graph APIs       | Use cases                                                                                                                       |
|--------------------|-----------------------|---------------------------------------------------------------------------------------------------------------------------------|
| [Online meeting](https://support.microsoft.com/office/meetings-in-microsoft-teams-e0b0ae21-53ee-4462-a50d-ca9b9e217b67) | [onlineMeeting](/graph/api/resources/onlinemeeting) <br> [attendanceReport](/graph/api/resources/meetingattendancereport) <br> [attendanceRecord](/graph/api/resources/attendancerecord) <br> [online meeting webhooks](/graph/changenotifications-for-onlinemeeting) | <ul><li>Hosting a meeting for up to 1,000 participants who can be inside or outside of your organization. Everyone can interact via audio, video, chat, and screen sharing.</li><li>Meetings are either scheduled, ad hoc, or channel meetings.</li></ul> |
| [Webinar](https://support.microsoft.com/office/get-started-with-microsoft-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3) | [virtualEventWebinar](/graph/api/resources/virtualeventwebinar) <br> [virtualEventRegistration](/graph/api/resources/virtualeventregistration) <br> [virtualEventWebinarRegistrationConfiguration](/graph/api/resources/virtualeventwebinarregistrationconfiguration) <br> [virtualEventRegistrationQuestion](/graph/api/resources/virtualeventregistrationquestionbase) <br> [meetingAttendanceReport](/graph/api/resources/meetingattendancereport) <br> [attendanceRecord](/graph/api/resources/attendancerecord) <br> [virtualEventSession](/graph/api/resources/virtualeventsession) <br> [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) <br> [virtual event webhooks](/graph/changenotifications-for-virtualevent)| <ul><li>Hosting a meeting where one or several experts (presenters) share their ideas or provide training to an audience (attendees inside or outside of your organization) with a maximum of 1,000 participants on the call.</li><li>Registration is needed before attendees can join the webinar.</li></ul> |
| [Town hall](https://support.microsoft.com/office/get-started-with-town-hall-in-microsoft-teams-33baf0c6-0283-4c15-9617-3013e8d4804f)|  [virtualEventTownhall](/graph/api/resources/virtualeventtownhall) <br> [virtualEventSession](/graph/api/resources/virtualeventsession) <br> [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) |<ul><li>Automatic streaming event for a limited number of presenters to a large group of attendees, capping at 10,000 or 20,000 participants (with Teams Premium).</li><li>Attendees cannot register for the event. They need to be invited. Attendees use the Q&A feature to engage with presenters and organizers instead of directly interacting via chat or audio.</li></ul> |


To learn more about the differences between each meeting type to choose the one that is best suited for your use case, see the [feature comparison chart](/microsoftteams/meeting-webinar-town-hall-feature-comparison).  


## Related content
- [Use online meeting APIs](cloud-communications-online-meetings.md)
- [Create solutions with webinar APIs](cloud-communications-virtual-events-webinar-usecases.md) 
- [Create solutions with town hall APIs](cloud-communications-virtual-events-townhall-usecases.md) 
- [Use virtual event change notifications](/graph/changenotifications-for-virtualevent)
