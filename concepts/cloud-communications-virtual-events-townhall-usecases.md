---
title: "Use cases for virtual events town hall Microsoft Graph APIs"
description: "Get a list of use cases that can be enabled via Microsoft Graph virtual events town hall APIs."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/18/2024
ms.topic: article
---
# Virtual events town hall API use cases

Microsoft Graph virtual events town hall APIs allow you to get Teams town hall data and programmatically create, update, and cancel a Teams town hall.

For you to make the best use of the Microsoft Graph virtual events town hall APIs, it’s helpful to understand the personas for the users who access the Teams town hall experience: 

- **Organizers** are employees (in your organization) who manage the town hall. They're the authority on when town halls take place and who participates. They configure town hall details such as title, theme, attendee experience, and email rules.
- **Presenters** are employees (in your organization) or guests who lead the town hall.  
- **Attendees** are either employees (in your organization) or guests who join the town hall and are either invited via email or the link to the town hall event is shared with them.  
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

You can use the following resource types to build your town hall solution: 
- [virtualEventTownhall](/graph/api/resources/virtualeventtownhall) – Used to create, get, update, publish, and cancel a Teams town hall.    
- [virtualEventPresenter](/graph/api/resources/virtualeventpresenter) – Used to create, get, list, update, and delete a presenter for a Teams town hall.   
- [virtualEventSession](/graph/api/resources/virtualeventsession) – A town hall created via Microsoft Graph APIs has one session that inherits the properties of online meetings.  

## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph town hall APIs and webhooks. 

| Solutions     | Description   |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams town hall.|
| [Data sync](#data-sync) | Pull Teams town hall data in a custom application. |
| [Email communication](#email-communication)| Use your own email infrastructure to send town hall-related notification emails. |

> [!NOTE]
> To build any Microsoft Graph solutions, you need to register and give the right permissions to your application. For more information, see [Authentication and authorization basics](/graph/auth/auth-concepts).

[!INCLUDE [cloud-communications-virtual-events-permissions](./includes/cloud-communications-virtual-events-permissions.md)]

### Create/update/cancel 

- Use the [Create townhall API](/graph/api/virtualeventsroot-post-townhalls) to create a draft of the event, followed by the [Publish townhall API](/graph/api/virtualeventtownhall-publish) to complete the creation and make it visible to its audience.
   - The town hall created via Microsoft Graph APIs is a Teams town hall event that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish, and cancel town halls. The create townhall API only supports delegated permissions on behalf of the organizer.  
- Like in Teams, coorganizers can update town halls. To update a town hall, use the [Update townhall API](/graph/api/virtualeventtownhall-update) with delegated permissions on behalf of the coorganizer.

### Data sync 

- Use the [Get townhall API](/graph/api/virtualeventtownhall-get) to pull data regarding a specific town hall, such as who is invited, who created the town hall, and who are the coorganizers.
- [List all the town halls in a tenant](/graph/api/virtualeventsroot-list-townhalls), including the town halls for which the user is an organizer or coorganizer. This scenario is supported for [delegated](/graph/api/virtualeventtownhall-getbyuserrole) and [application](/graph/api/virtualeventtownhall-getbyuseridandrole) permissions. These APIs are currently only available in the beta endpoint. 

### Email communication

You can turn off email communications to attendees when you [create the town hall](/graph/api/virtualeventsroot-post-townhalls). In the **settings** property, set `isAttendeeEmailNotificationEnabled` to `false`.Emails are still sent to organizers, coorganizers, and presenters (internal and external).
