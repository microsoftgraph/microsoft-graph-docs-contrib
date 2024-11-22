---
title: "Virtual events town hall use cases"
description: "List of use cases that can be enabled using virtual events town hall APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/18/2024
---
# Virtual events town hall API overview
Microsoft Graph virtual events town hall APIs allow you to get Teams town hall data and programmatically create, update, and cancel a Teams town hall.

To make the best use of the Graph virtual events town hall APIs, it’s helpful to understand the personas for the users who access the Teams town hall experience: 

- **Organizers** are employees (in your organization) who manage the town hall. They're the authority on when town halls take place and who participates. They configure town hall details such as title, theme, attendee experience, and email rules.
- **Presenters** are employees (in your organization) or guests who lead the town hall.  
- **Attendees** are either employees (in your organization) or guests who join the town hall and are either invited via email or the link to the town hall event is shared with them.  
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

The following resource types can be used to build your town hall solution: 
- [virtualEventTownhall](/graph/api/resources/virtualeventtownhall) – Used to create, get, update, publish, and cancel a Teams town hall.    
- [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) – Used to create, get, list, update, and delete a presenter for a Teams town hall.   
- [virtualEventSession](/graph/api/resources/virtualeventsession) – A town hall created via Microsoft Graph APIs has one session that inherits the properties of online meetings.  

## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph town hall APIs and webhooks. 

| Solutions     | Description   |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams town hall.|
| [Data Sync](#data-sync) | Pull Teams town hall data in a custom application. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out town hall-related notification emails. |

> [!NOTE]
>To build any Graph solutions, follow this guide on [how to register and give the right permissions to your application](/graph/auth/auth-concepts).

### Create/update/cancel 
- Use the [CREATE townhall API](/graph/api/virtualeventsroot-post-townhalls) to create a draft of the event, followed by the [PUBLISH townhall API](/graph/api/virtualeventtownhall-publish) to complete the creation and make it visible to its audience.
   - The town hall created via Microsoft Graph APIs is a Teams town hall event that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish, and cancel town halls which is why the CREATE townhall API only supports delegated permissions on behalf of the organizer.  
- Like in Teams, co-organizers can update town halls. So use the [UPDATE townhall API](/graph/api/virtualeventtownhall-update) with delegated permissions on behalf of the co-organizer.

### Data Sync 
- Use the [GET townhall API](/graph/api/virtualeventtownhall-get) to pull data regarding a specific town hall, such as who is invited, who created the town hall, and who are the co-organizers.
- [List all the town halls in a tenant](/graph/api/virtualeventsroot-list-townhalls) –- where the [user is an organizer or co-organizer](/graph/api/virtualeventtownhall-getbyuserrole) and where the [specified user is either the organizer or co-organizer](/graph/api/virtualeventtownhall-getbyuseridandrole) –- are currently only available in Beta. 

### Email communication
- To turn off email communications to attendees, it needs to be done when [creating the town hall](/graph/api/virtualeventsroot-post-townhalls). In the `settings` property, set `isAttendeeEmailNotificationEnabled` to `false`. However, emails are still sent to organizers, co-organizers, and presenters (internal and external).
