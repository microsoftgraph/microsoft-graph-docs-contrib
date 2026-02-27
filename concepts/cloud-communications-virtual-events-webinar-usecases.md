---
title: "Use cases for virtual events webinar APIs in Microsoft Graph"
description: "List of use cases that can be enabled using virtual events webinar APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/18/2024
ms.topic: article
---
# Virtual events webinar API use cases

Microsoft Graph virtual events webinar APIs allow you to get Teams webinar data and programmatically create, update, and cancel a Teams webinar.

For you to make the best use of the Graph virtual events webinar APIs, it’s helpful to understand the personas for the users who access the Teams webinar experience: 

- **Organizers** are employees (in your organization) who manage the webinar. They're the authority on schedule and participants. They configure webinar attributes such as title, theme, attendee experience, and email rules.   
- **Presenters** are employees (in your organization) or guests who lead the webinar.   
- **Registrants** are users (in or outside of your organization) who registered for a webinar. They can be registered, waitlisted, or rejected. They can choose to cancel their webinar registration.   
- **Attendees** are registrants who joined the webinar. They need to register through a portal and answer registration questions. 
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

You can use the following resource types to build your webinar solution: 
- [virtualEventWebinar](/graph/api/resources/virtualeventwebinar) – Used to create, get, update, publish, cancel, and list Teams webinars.  
- [virtualEventRegistration](/graph/api/resources/virtualeventregistration) – Used to create, get, cancel, and list registration records of registrants of a webinar. Provides the unique Teams webinar join URL for the registered registrant. 
- [virtualEventRegistrationQuestion](/graph/api/resources/virtualeventregistrationquestionbase) – Used to create, list, and delete either custom registration questions or predefined registration questions for registrants to answer when they register for a webinar.  
- [virtualEventRegistrationConfiguration](/graph/api/resources/virtualeventwebinarregistrationconfiguration) – Contains information about a webinar registration configuration that stores the registration portal URL of the webinar.  
- [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) – Used to create, get, list, update, and delete a presenter for a Teams webinar. 
- [virtualEventSession](/graph/api/resources/virtualeventsession)  – A webinar created via Microsoft Graph APIs only has one session that inherits the properties of online meetings. 
- [meetingAttendanceReport](/graph/api/resources/meetingattendancereport) – Each time a webinar ends, an attendance report is generated for the session but doesn’t include attendee data.   
- [attendanceRecord](/graph/api/resources/attendancerecord) – Provides webinar attendee data in the attendance report.  
- [virtual event webhooks](/graph/changenotifications-for-virtualevent) – Can receive notifications for changes to a webinar, webinar registration, session, attendance report, and so on.  

## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph webinar APIs and webhooks. 

| Solutions     | Description   |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams webinars.|
| [Data sync](#data-sync) | Pull Teams webinar data in a custom application (like attendees, registration questions, attendance report, and more).  |
| [Registration](#registration)  | Host your own registration portal experience for a Teams webinar and sync the registration data to the Teams client. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out webinar-related notification emails. |

> [!NOTE]
> To build any Microsoft Graph solutions, you need to register and give the right permissions to your application. For more information, see [Authentication and authorization basics](/graph/auth/auth-concepts).

[!INCLUDE [cloud-communications-virtual-events-permissions](./includes/cloud-communications-virtual-events-permissions.md)]

### Create/update/cancel 

- Use the [Create webinar API](/graph/api/virtualeventsroot-post-webinars) to create a draft of the event, followed by the [Publish webinar API](/graph/api/virtualeventwebinar-publish) to complete the creation and make it visible to its audience.
   - The webinar created via Microsoft Graph APIs is a Teams webinar that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish, and cancel webinar events. The create webinar API only supports delegated permissions on behalf of the organizer.
- Like in Teams, coorganizers can update webinars. To update webinars, use the [Update webinar API](/graph/api/virtualeventwebinar-update) with delegated permissions on behalf of the coorganizer.
- Subscribe to [change notifications](/graph/changenotifications-for-virtualevent#subscribable-virtual-events) to get updates about any changes made to the webinar.  

### Data sync 

- Subscribe to [change notifications](/graph/changenotifications-for-virtualevent#subscribable-virtual-events) to get updates about any changes made to the webinar.
- To get attendance report data for a webinar, use [List attendance records](/graph/api/attendancerecord-list) or [Get attendance record with a query option](/graph/api/meetingattendancereport-get#example-2-get-the-attendance-report-for-a-webinar-session-by-id).
  - To get attendance information of a webinar attendee, after a list or get request, map the **Id** property in [virtual event registration](/graph/api/resources/virtualeventregistration) to the **registrationId** property in [attendance record](/graph/api/resources/attendancerecord) (currently only available in the beta endpoint).
- Get data for [a specific webinar](/graph/api/virtualeventwebinar-get), [list all the webinar in a tenant](/graph/api/virtualeventsroot-list-webinars), list webinars where the [user is an organizer or coorganizer](/graph/api/virtualeventwebinar-getbyuserrole), list webinars where the [specified user is either the organizer or coorganizer](/graph/api/virtualeventwebinar-getbyuseridandrole).  
- To get the Teams webinar registration portal URL for your webinar, use [Get webinar registration configuration](/graph/api/virtualeventwebinarregistrationconfiguration-get). 

### Registration 

- Use [Create registration](/graph/api/virtualeventwebinar-post-registrations) to programmatically register users to your webinar. Organizers, coorganizers, and presenters don’t need to register. Whether or not registrants have Microsoft Entra accounts affects the permissions you need to call the API. 
- [CREATE registration questions](/graph/api/virtualeventregistrationconfiguration-post-questions) (predefined or custom) attendees have to answer required questions during registration. 
- After the registrant registers for the webinar, use [List sessions](/graph/api/virtualeventregistration-list-sessions) to get the unique `joinWebURL` for the webinar. 

### Email communication

- You can turn off email communications to attendees when you [create the webinar](/graph/api/virtualeventsroot-post-webinars). In the **settings** property, set `isAttendeeEmailNotificationEnabled` to `false`. Emails are still send to organizers, coorganizers, and presenters (internal and external).
- You can subscribe to [change notifications](/graph/changenotifications-for-virtualevent#subscribable-virtual-events) to build your own customized email communication system. 
