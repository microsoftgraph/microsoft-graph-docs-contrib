---
ms.localizationpriority: medium
author: garchiro7
ms.author: garchiro7
ms.subservice: "cloud-communications"
ms.topic: include
ms.date: 11/15/2025
---

### Resource-specific consent (RSC) for virtual events

Resource-specific consent (RSC) allows apps to request permissions scoped to a specific webinar or town hall instead of requiring global admin privileges. The RSC permissions improves security, simplifies consent flows, and enables developers to build integrations that respect organizational boundaries.

#### Enabled Microsoft Graph virtual events APIs and RSC permissions

| RSC permission | APIs | Description |
|:---|:---|:---|
| VirtualEvent.Read.Chat | [Webinar](/graph/api/resources/virtualeventwebinar) and [town hall](/graph/api/resources/virtualeventtownhall) | Read information for this webinar or town hall, including schedules, speakers, event settings, and webinar registrations. |
| OnlineMeetingArtifact.Read.Chat | [Attendance report](/graph/api/resources/meetingattendancereport) and [attendance record](/graph/api/resources/attendancerecord) | Read attendance reports and attendance records for this webinar or town hall.  |
| VirtualEventRegistration-Anon.ReadWrite.Chat | [Virtual event registrations](/graph/api/resources/virtualeventregistration) | Register attendees and cancel registrations for this webinar. |

#### Traditional authentication flow

If RSC isn't required or feasible, you can use the following traditional OAuth flows:
- *App-only token flow*: Use it for backend services or automation scenarios where the app acts without user context.
- *Delegated (user) token flow*: Use when actions require user context and consent.

#### When to use RSC vs. traditional token flow

| Scenario | Recommended approach |
|:---|:---|
| App needs access to a specific webinar or town hall only | RSC |
| App requires tenant-wide access to multiple events | App-only token flow |
| User-driven actions like organizer managing events | Delegated token flow |
| Compliance or security mandates require least privilege | RSC |

#### Getting started using RSC permissions

The following steps describe how to get started with setting up your app and using RSC permissions:

1. Register your app and define RSC permissions in the app manifest.
2. Publish your app via the Teams developer portal or partner center.
3. Admin grants RSC in the Teams admin center.
4. Use the Microsoft Graph APIs for webinars and town halls with scoped permissions.
