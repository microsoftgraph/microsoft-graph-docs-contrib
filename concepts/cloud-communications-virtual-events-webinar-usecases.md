---
title: "Virtual events webinar use cases"
description: "List of use cases that can be enabled using virtual events webinar APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
---
# Virtual events webinar API overview
Microsoft Graph virtual events webinar APIs allows you to get Teams webinar data and programmatically create, update and delete a Teams webinar.

To make the best use of the Graph virtual events webinar APIs, it’s helpful to understand the personas for the users who access the Teams webinar experience: 

- **Organizers** are employees (in your organization) who manage the webinar. They are the authority on schedule and participants. They configure webinar attributes such as title, theme, attendee experience, and email rules.   
- **Presenters** are employees (in your organization) or external participants who lead the webinar.   
- **Registrants** are users (in or outside of your organization) who have registered for a webinar. They can be registered, waitlisted, or rejected. They can choose to cancel their webinar registration.   
- **Attendees** are registrants who join the webinar. They need to have registered through a portal and answered registration questions. 
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

The following resource types can be used to build your webinar solution 
- [virtualEventWebinar](../api-reference/v1.0/resources/virtualeventwebinar.md) – Used to create, get, update, publish, cancel, and list Teams webinars.  
- [virtualEventRegistration](../api-reference/v1.0/resources/virtualeventregistration.md) – Used to create, get, cancel, and list registration records of registrants of a webinar. Provides the unique Teams webinar join URL for the registered registrant. 
- [virtualEventRegistrationQuestion](../api-reference/v1.0/resources/virtualeventregistrationquestionbase.md) – Used to create, list, and delete either custom registration questions or predefined registration questions for registrants to answer when they register for a webinar.  
- [virtualEventRegistrationConfiguration](../api-reference/v1.0/resources/virtualeventwebinarregistrationconfiguration.md) – Contains information about a webinar registration configuration that stores the registration portal URL of the webinar.  
- [virtualEventPresenter](../api-reference/v1.0/resources/virtualeventpresenter.md) – Used to create, get, list, update and delete a presenter for a Teams webinar. 
- [virtualEventSession](../api-reference/v1.0/resources/virtualeventsession.md)  – A webinar created via Microsoft Graph APIs only has one session that inherits the properties of online meetings. 
- [meetingAttendanceReport](../api-reference/v1.0/resources/meetingattendancereport.md) – Each time a webinar ends, an attendance report is generated for the session but doesn’t include attendee data.   
- [attendanceRecord](../api-reference/v1.0/resources/attendancerecord.md) – Provides webinar attendee data in the attendance report.  
- [virtual event webhooks](/concepts/changenotifications-for-virtualevent.md) – Can receive notifications for changes to a webinar, webinar registration, session, attendance report, and so on.  


## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph webinar APIs and webhooks. 
| **Solutions**      | **Description**    |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams webinars.|
| [Data Sync](#data-sync) | Pull Teams webinar data in a custom application (i.e. attendees, registration questions, attendance report, and more).  |
| [Registration](#registration)  | Host your own registration portal experience for a Teams webinar and sync the registration data to the Teams client. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out webinar-related notification emails. |

> [!NOTE]
>To build any Graph solutions, follow this guide on [how to register and give the right permissions to your application](/concepts/auth/auth-concepts.md). 

### Create/update/cancel 

- Use the [Create webinar API](../api-reference/v1.0/resources/virtualeventsroot-post-webinars.md) to create a draft of the event, followed by the [Publish webinar API](../api-reference/v1.0/resources/virtualeventwebinar-publish.md) to complete the creation and make it visible to its audience.
  
   - The webinar created via Microsoft Graph APIs will be a Teams webinar that’s visible and editable in the Teams client. 

   - Just like in Teams, only the organizer can create, publish and cancel webinar events. That is why Create webinar API can only be called with delegated permissions on behalf of the organizer.  

- Like in Teams, co-organizers can update webinars. Use the [Update webinar API](../api-reference/v1.0/resources/virtualeventwebinar-update.md) with delegated permissions on behalf of the co-organizer to do so. 
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events.md) to get updates about any changes made to the webinar.  

### Data Sync 
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events.md) to get updates about any changes made to the webinar.
- To get attendance report data for a webinar, use [list attendance records](../api-reference/v1.0/resources/attendancerecord-list.md) or [get attendance record with a query option](../api-reference/v1.0/resources/meetingattendancereport-get#example-2-get-the-attendance-report-for-a-webinar-session-by-id.md).
- To get attendance information of a webinar attendee, map the `Id` property in [virtual event registration](../api-reference/v1.0/resources/virtualeventregistration.md) to the `registrationId` property in [attendance record](../api-reference/beta/resources/attendancerecord.md) (currently only available in Beta).
- Get data for a specific webinar, list all the webinar in a tenant, list webinars where the user is an organizer or co-organizer, list webinars where the specified user is either the organizer or co-organizer.  
- To get the Teams webinar registration portal URL for your webinar, use [Get webinar registration configuration](../api-reference/v1.0/resources/virtualeventwebinarregistrationconfiguration-get.md). 

### Registration  

### Email communication
