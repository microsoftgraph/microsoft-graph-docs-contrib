---
title: "Virtual events town hall use cases"
description: "List of use cases that can be enabled using virtual events town hall APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
---
# Virtual events town hall API overview
Microsoft Graph virtual events town hall APIs allows you to get Teams town hall data and programmatically create, update and cancel a Teams town hall.

To make the best use of the Graph virtual events town hall APIs, it’s helpful to understand the personas for the users who access the Teams town hall experience: 

- **Organizers** are employees (in your organization) who manage the town hall. They are the authority on when town halls take place and who participates. They configure town hall details such as title, theme, attendee experience, and email rules.
- **Presenters** are employees (in your organization)or external participants who lead the town hall.  
- **Attendees** are either employees (in your organization) or external users who join the town hall and are either invited via email or the link to the town hall event is shared with them.  
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

The following resource types can be used to build your webinar solution 
- [virtualEventTownhall](../api-reference/v1.0/resources/virtualeventtownhall.md) – Used to create, get, update, publish, and cancel a Teams town hall.    
- [virtualEventPresenter](../api-reference/v1.0/resources/virtualeventpresenter.md) – Used to create, get, list, update, and delete a presenter for a Teams town hall.   
- [virtualEventSession](../api-reference/v1.0/resources/virtualeventsession.md) – A town hall created via Microsoft Graph APIs has one session that inherits the properties of online meetings.  

## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph town hall APIs and webhooks. 
| **Solutions**      | **Description**    |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams town hall.|
| [Data Sync](#data-sync) | Pull Teams town hall data in a custom application. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out town hall-related notification emails. |

> [!NOTE]
>To build any Graph solutions, follow this guide on [how to register and give the right permissions to your application](/concepts/auth/auth-concepts.md).

### Create/update/cancel 
- Use the [Create webinar API](../api-reference/v1.0/api/virtualeventsroot-post-webinars.md) to create a draft of the event, followed by the [Publish webinar API](../api-reference/v1.0/api/virtualeventwebinar-publish.md) to complete the creation and make it visible to its audience.
   - The webinar created via Microsoft Graph APIs will be a Teams webinar that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish and cancel webinar events. That is why Create webinar API can only be called with delegated permissions on behalf of the organizer.  
- Like in Teams, co-organizers can update webinars. Use the [Update webinar API](../api-reference/v1.0/api/virtualeventwebinar-update.md) with delegated permissions on behalf of the co-organizer to do so. 
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent.md#subscribable-virtual-events) to get updates about any changes made to the webinar.  

### Data Sync 
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events.md) to get updates about any changes made to the webinar.
- To get attendance report data for a webinar, use [list attendance records](../api-reference/v1.0/api/attendancerecord-list.md) or [get attendance record with a query option](../api-reference/v1.0/api/meetingattendancereport-get.md#example-2-get-the-attendance-report-for-a-webinar-session-by-id).
  - To get attendance information of a webinar attendee, after doing the above, map the `Id` property in [virtual event registration](../api-reference/v1.0/resources/virtualeventregistration.md) to the `registrationId` property in [attendance record](../api-reference/beta/resources/attendancerecord.md) (currently only available in Beta).
- Get data for [a specific webinar](../api-reference/v1.0/api/virtualeventwebinar-get.md), [list all the webinar in a tenant](../api-reference/v1.0/api/virtualeventsroot-list-webinars.md), list webinars where the [user is an organizer or co-organizer](../api-reference/v1.0/api/virtualeventwebinar-getbyuserrole.md), list webinars where the [specified user is either the organizer or co-organizer](../api-reference/v1.0/api/virtualeventwebinar-getbyuseridandrole.md).  
- To get the Teams webinar registration portal URL for your webinar, use [Get webinar registration configuration](../api-reference/v1.0/api/virtualeventwebinarregistrationconfiguration-get.md). 


### Email communication
- To turn off email communications to attendees, it needs to be done when [creating the town hall](../api-reference/v1.0/api/virtualeventsroot-post-webinars.md). In the `settings` property, set `isAttendeeEmailNotificationEnabled` to `false`. However, email will still be sent to organizers, co-organizers, and presenters (internal and external).
- Can subscribe to [change notifications](/concepts/changenotifications-for-virtualevent.md#subscribable-virtual-events) to build your own customized email communication system. 
