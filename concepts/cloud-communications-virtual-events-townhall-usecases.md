---
title: "Virtual events town hall use cases"
description: "List of use cases that can be enabled using virtual events town hall APIs"
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
---
# Virtual events town hall API overview
Microsoft Graph virtual events town hall APIs allows you to get Teams town hall data and programmatically create, update, and cancel a Teams town hall.

To make the best use of the Graph virtual events town hall APIs, it’s helpful to understand the personas for the users who access the Teams town hall experience: 

- **Organizers** are employees (in your organization) who manage the town hall. They're the authority on when town halls take place and who participates. They configure town hall details such as title, theme, attendee experience, and email rules.
- **Presenters** are employees (in your organization) or guests who lead the town hall.  
- **Attendees** are either employees (in your organization) or guests who join the town hall and are either invited via email or the link to the town hall event is shared with them.  
- **Teams tenant administrator** must authorize custom applications with appropriate permissions.

The following resource types can be used to build your town hall solution 
- [virtualEventTownhall](../api-reference/v1.0/resources/virtualeventtownhall.md) – Used to create, get, update, publish, and cancel a Teams town hall.    
- [virtualEventPresenter](../api-reference/v1.0/resources/virtualeventpresenter.md) – Used to create, get, list, update, and delete a presenter for a Teams town hall.   
- [virtualEventSession](../api-reference/v1.0/resources/virtualeventsession.md) – A town hall created via Microsoft Graph APIs has one session that inherits the properties of online meetings.  

## Solutions you can build 
The following table lists some solutions you can build by using the Teams client and Microsoft Graph town hall APIs and webhooks. 
| Solutions     | Description   |
| ------------- | ------------- |
| [Create/update/cancel](#createupdatecancel) | Programmatically create, update, and cancel Teams town hall.|
| [Data Sync](#data-sync) | Pull Teams town hall data in a custom application. |
| [Email communication](#email-communication)| Use your own email infrastructure to send out town hall-related notification emails. |

> [!NOTE]
>To build any Graph solutions, follow this guide on [how to register and give the right permissions to your application](/concepts/auth/auth-concepts.md).

### Create/update/cancel 
- Use the [CREATE townhall API](../api-reference/v1.0/api/virtualeventsroot-post-townhalls.md) to create a draft of the event, followed by the [PUBLISH townhall API](../api-reference/v1.0/api/virtualeventtownhall-publish.md) to complete the creation and make it visible to its audience.
   - The town hall created via Microsoft Graph APIs is a Teams town hall event that’s visible and editable in the Teams client. 
   - Just like in Teams, only the organizer can create, publish, and cancel town halls which is why the CREATE townhall API only supports delegated permissions on behalf of the organizer.  
- Like in Teams, co-organizers can update town halls. So use the [UPDATE townhall API](../api-reference/v1.0/api/virtualeventtownhall-update.md) with delegated permissions on behalf of the co-organizer.

### Data Sync 
- Use the [GET townhall API](../api-reference/v1.0/api/virtualeventtownhall-get.md) to pull data regarding a specific town hall. such as who is invited, who created the town hall, and who are the co-organizers.
- [List all the town hall in a tenant](../api-reference/beta/api/virtualeventsroot-list-townhalls.md), where the [user is an organizer or co-organizer](../api-reference/beta/api/virtualeventtownhall-getbyuserrole.md), and where the [specified user is either the organizer or co-organizer](../api-reference/beta/api/virtualeventtownhall-getbyuseridandrole.md) are currently only available in Beta. 

### Email communication
- To turn off email communications to attendees, it needs to be done when [creating the town hall](../api-reference/v1.0/api/virtualeventsroot-post-townhalls.md). In the `settings` property, set `isAttendeeEmailNotificationEnabled` to `false`. However, emails still send to organizers, co-organizers, and presenters (internal and external).
