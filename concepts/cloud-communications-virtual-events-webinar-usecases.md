---
title: "Virtual events webinar use cases"
description: "List of use cases that can be enabled using virtual events webinar APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
---
# Virtual events webinar API overview
Microsoft Graph virtual events webinar APIs allows you to get Teams webinar data and programmatically create, update, and cancel a Teams webinar.

To make the best use of the Graph virtual events webinar APIs, it’s helpful to understand the personas for the users who access the Teams webinar experience: 

- **Organizers** are employees (in your organization) who manage the webinar. They're the authority on schedule and participants. They configure webinar attributes such as title, theme, attendee experience, and email rules.   
- **Presenters** are employees (in your organization) or guests who lead the webinar.   
- **Registrants** are users (in or outside of your organization) who registered for a webinar. They can be registered, waitlisted, or rejected. They can choose to cancel their webinar registration.   
- **Attendees** are registrants who joined the webinar. They need to register through a portal and answered registration questions. 
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

The following resource types can be used to build your webinar solution 
- [virtualEventWebinar](/graph/api/resources/virtualeventwebinar) – Used to create, get, update, publish, cancel, and list Teams webinars.  
- [virtualEventRegistration](/graph/api/resources/virtualeventregistration – Used to create, get, cancel, and list registration records of registrants of a webinar. Provides the unique Teams webinar join URL for the registered registrant. 
- [virtualEventRegistrationQuestion](/graph/api/resources/virtualeventregistrationquestionbase) – Used to create, list, and delete either custom registration questions or predefined registration questions for registrants to answer when they register for a webinar.  
- [virtualEventRegistrationConfiguration](/graph/api/resources/virtualeventwebinarregistrationconfiguration) – Contains information about a webinar registration configuration that stores the registration portal URL of the webinar.  
- [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) – Used to create, get, list, update, and delete a presenter for a Teams webinar. 
- [virtualEventSession](/graph/api/resources/virtualeventsession)  – A webinar created via Microsoft Graph APIs only has one session that inherits the properties of online meetings. 
- [meetingAttendanceReport](/graph/api/resources/meetingattendancereport) – Each time a webinar ends, an attendance report is generated for the session but doesn’t include attendee data.   
- [attendanceRecord](/graph/api/resources/attendancerecord) – Provides webinar attendee data in the attendance report.  
- [virtual event webhooks](/concepts/changenotifications-for-virtualevent) – Can receive notifications for changes to a webinar, webinar registration, session, attendance report, and so on.  


## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph webinar APIs and webhooks. 
| Solutions     | Description   |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams webinars.|
| [Data Sync](#data-sync) | Pull Teams webinar data in a custom application (like attendees, registration questions, attendance report, and more).  |
| [Registration](#registration)  | Host your own registration portal experience for a Teams webinar and sync the registration data to the Teams client. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out webinar-related notification emails. |

> [!NOTE]
>To build any Graph solutions, follow this guide on [how to register and give the right permissions to your application](/graph/auth/auth-concepts).
> 
### Create/update/cancel 
- Use the [CREATE webinar API](/graph/api/virtualeventsroot-post-webinars) to create a draft of the event, followed by the [PUBLISH webinar API](/graph/api/virtualeventwebinar-publish) to complete the creation and make it visible to its audience.
   - The webinar created via Microsoft Graph APIs is a Teams webinar that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish, and cancel webinar events which is why Create webinar API only supports delegated permissions on behalf of the organizer.
- Like in Teams, co-organizers can update webinars. So use the [UPDATE webinar API](/graph/api/virtualeventwebinar-update) with delegated permissions on behalf of the co-organizer.
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events) to get updates about any changes made to the webinar.  

### Data Sync 
- Subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events) to get updates about any changes made to the webinar.
- To get attendance report data for a webinar, use [LIST attendance records](/graph/api/attendancerecord-list) or [GET attendance record with a query option](/graph/api/meetingattendancereport-get#example-2-get-the-attendance-report-for-a-webinar-session-by-id).
  - To get attendance information of a webinar attendee, after doing the above, map the `Id` property in [virtual event registration](/graph/api/resources/virtualeventregistration) to the `registrationId` property in [attendance record](/graph/api/beta/resources/attendancerecord) (currently only available in Beta).
- Get data for [a specific webinar](/graph/api/virtualeventwebinar-get), [list all the webinar in a tenant](/graph/api/virtualeventsroot-list-webinars), list webinars where the [user is an organizer or co-organizer](/graph/api/virtualeventwebinar-getbyuserrole), list webinars where the [specified user is either the organizer or co-organizer](/graph/api/virtualeventwebinar-getbyuseridandrole).  
- To get the Teams webinar registration portal URL for your webinar, use [GET webinar registration configuration](/graph/api/virtualeventwebinarregistrationconfiguration-get). 

### Registration  
- Use [CREATE registration](/graph/api/virtualeventwebinar-post-registrations) to programmatically register users to your webinar. Organizers, co-organizers, and presenters don’t need to register. Whether or not registrants have Microsoft Entra accounts affects the permissions you need to call the API. 
- [CREATE registration questions](/graph/api/virtualeventregistrationconfiguration-post-questions) (predefined or custom) attendees have to answer during registration. 
- After the registrant registers for the webinar, use [LIST sessions](/graph/api/virtualeventregistration-list-sessions) to get the unique `joinWebURL` for the webinar. 

### Email communication
- To turn off email communications to attendees, it needs to be done when [creating the webinar](/graph/api/virtualeventsroot-post-webinars). In the `settings` property, set `isAttendeeEmailNotificationEnabled` to `false`. However, emails still send to organizers, co-organizers, and presenters (internal and external).
- Can subscribe to [change notifications](/concepts/changenotifications-for-virtualevent#subscribable-virtual-events) to build your own customized email communication system. 
