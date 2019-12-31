---
title: "Get Outlook events in a shared or delegated calendar"
description: "In Outlook, customers can share a calendar with other users and let them view or modify events in that calendar. Customers can also grant a delegate to act on their  behalf, to receive or respond to meeting requests, or create or change items in the calendar."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Get Outlook events in a shared or delegated calendar

In Outlook, a calendar owner can share a calendar with other users and let them view or modify events in that calendar; the calendar can be a custom calendar or the primary calendar. The owner can also grant a delegate to act on their behalf, to receive or respond to meeting requests, or create or change items in the primary calendar of the email account.

Programmatically, Microsoft Graph supports getting events in calendars that have been shared by other users, as well as getting the shared calendars themselves. The support also applies to calendars that have been delegated. 

As an example, Alex has shared with Megan his primary calendar and given Megan read access. If Megan has signed into your app and provided _delegated permissions_ (Calendars.Read.Shared or Calendars.ReadWrite.Shared), on behalf of Megan, your app will be able to access the shared primary calendar and its events as described below.

> **Note** The sharing permissions (Calendars.Read.Shared or Calendars.ReadWrite.Shared) allow you to read or write events in a shared or delegated calendar. They do not support [subscribing to change notifications](webhooks.md) on items in such folders. To set up change notification subscriptions on events in a shared, delegated, or any other user or resource calendar in the tenant, use the application permission, Calendars.Read.

## Get an event in the shared, primary calendar

Signed in as Megan, your app can get a specific event in Alex's primary calendar:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Alex-userId | Alex-userPrincipalName}/calendar/events/{id}
```

On successful completion, you'll get HTTP 200 OK and the [event](/graph/api/resources/event?view=graph-rest-1.0) instance identified by `{id}` from Alex's primary calendar.

## Get all the events in the shared, primary calendar

Get all the events in the primary calendar that Alex has shared with Megan:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Alex-userId | Alex-userPrincipalName}/calendar/events
```

On successful completion, you'll get HTTP 200 OK and a collection of [event](/graph/api/resources/event?view=graph-rest-1.0) instances in Alex's primary calendar.

## Get the shared, primary calendar

Get the primary calendar that Alex has shared with Megan:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Alex-userId | Alex-userPrincipalName}/calendar
```

On successful completion, you'll get HTTP 200 OK and a [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) instance that represents Alex's shared, primary calendar.

The same GET capabilities apply if Alex had delegated Megan access to Alex's primary calendar, or if Alex had delegated Megan his entire mailbox.

If Alex has not shared his primary calendar with Megan, nor has he delegated his primary calendar or mailbox to Megan, specifying Alex’s user ID or user principal name in the preceding GET operations will return an error. 


## Get events or calendar in shared, custom calendar

If Alex has shared a _custom_ calendar (named "Kids parties") with Adele, and Adele has provided delegated permissions (Calendars.Read or Calendars.ReadWrite), your app can get the events or calendar as if the shared calendar is one of Adele's calendars, as described below.

1. Signed in as Adele, get the calendar ID of the shared custom calendar.

    ```http
    GET /me/calendars
    GET /users/{Adele-userId | Adele-userPrincipalName}/calendars
    ```

    The shared calendar ("Kids parties") is the second calendar returned in the response.

    ```http
    HTTP/1.1 200 OK
    Content-type: application/json

    {
        "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('d3b9214b-dd8b-441d-b7dc-c446c9fa0e69')/calendars",
        "value": [
            {
                "id": "AQMkADU5NAAAJMjAAAAA==",
                "name": "Calendar",
                "color": "auto",
                "hexColor": "",
                "isDefaultCalendar": true,
                "changeKey": "NDznl+Uh50WkanaCOKHkaQAAAAACXQ==",
                "canShare": true,
                "canViewPrivateItems": true,
                "isShared": false,
                "isSharedWithMe": false,
                "canEdit": true,
                "allowedOnlineMeetingProviders": [
                    "teamsForBusiness"
                ],
                "defaultOnlineMeetingProvider": "teamsForBusiness",
                "isTallyingResponses": true,
                "isRemovable": false,
                "owner": {
                    "name": "Adele Vance",
                    "address": "AdeleV@contoso.OnMicrosoft.com"
                }
            },
            {
                "id": "AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=",
                "name": "Kids parties",
                "color": "lightYellow",
                "hexColor": "#f4d07a",
                "isDefaultCalendar": false,
                "changeKey": "NDznl+Uh50WkanaCOKHkaQAAYumJRQ==",
                "canShare": false,
                "canViewPrivateItems": false,
                "isShared": false,
                "isSharedWithMe": true,
                "canEdit": false,
                "allowedOnlineMeetingProviders": [],
                "defaultOnlineMeetingProvider": "unknown",
                "isTallyingResponses": false,
                "isRemovable": true,
                "owner": {
                    "name": "Alex Wilber",
                    "address": "AlexW@contoso.OnMicrosoft.com"
                }
            }
        ]
    }
```
2. On behalf of Adele, get events or the shared calendar using the second calendar ID in the response from step 1.

    ```http
    GET /me/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=/events/{id}
    GET /users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=/events/{id}

    GET /me/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=/events
    GET /users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=/events
    
    GET /me/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=
    GET /users/{Adele-userId | Adele-userPrincipalName}/calendars/AAMkADU5NGAAA0POeX5SHnRaRqdoI4oeRpAABf0JlyAAA=
    ```

On successful completion, you'll get HTTP 200 OK and the requested event, events, or calendar that Alex has shared with Adele.


## Next steps

Find out more about:

- [Create Outlook events in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md)
- [Share or delegate a calendar in Outlook (preview)](outlook-share-or-delegate-calendar.md)
- [Why integrate with Outlook calendar](outlook-calendar-concept-overview.md)
- The [calendar API](/graph/api/resources/calendar?view=graph-rest-1.0) in Microsoft Graph v1.0.
