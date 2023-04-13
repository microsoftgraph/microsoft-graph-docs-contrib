---
title: "Get change notifications for Microsoft Teams virtual event updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to various events for Microsoft Teams online meetings."
author: "awang119"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams virtual event updates

## Subscribe to notifications for virtual event updates.

Virtual event resources support subscription to change notifications. Subscriptions for virtual events have a max period of a day. Renewal of subscription or a new subscription must be created to sustain notifications for virtual events subscribeable resources. Please review webhook subscriptions for more details about the subscription payload. Subscriptions to virtual event resources have a max expiration time of 1 day. Subscriptions must either be created again or renewed. Please review [Change notifications](/graph/api/resources/webhooks) for more details.

### Permissions

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Not supported.                                           | Not support        |
| Delegated (personal Microsoft account)| Not supported.                                           | Not supported.     |
| Application                           | VirutalEvent.Read.All                                    | beta               |

### Subscribeable resources

| Resource Type                                          | Resource                                                                                  | Supported change types    |
|:-------------------------------------------------------|:------------------------------------------------------------------------------------------|:--------------------------|
| All Events (Tenant-level)                              | solutions/virtualEvents/events                                                            | created                   |
| All Events (Tenant-level by organizer/coorganizer ids) | solutions/virtualEvents/events/geteventsfromorganizers(organizerIds=['id1', 'id2'])       | created                   |
| A webinar's events                                     | solutions/virtualEvents/webinars/{webinarId}                                              | updated                   |
| A webinar's session events                             | solutions/virtualEvents/webinars/{webinarId}/sessions                                     | created, updated          |
| A webinar's registrantion events                       | solutions/virtualEvents/webinars/{webinarId}/registration/registrants                     | created, updated          |

**Note:** Replace values with parenthesis with actual values.

### Subscription to all created events in a tenant

Subscriptions for all events for a unique app and tenant can be specified with the following resource `solutions/virtualEvents/events` in the subscription payload.
The subscription will designate the notification url to receive all event created notifications in a tenant for virtual events.
Only event created notifications are supported for this subscription. A tenant may only have one type of this subscription per application.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to all created events with relevant organizerss.

Subscriptions to all events that include any members of a set of organizers/coorganizers can be accomplished with the resource specified as 
`"solutions/virtualEvents/events/geteventsfromorganizers(organizerIds=['id1', 'id2'])"`. These subscriptions will receive any created notifications for all virtual events where id1 and id2 are either the organizer or co-organizer. This subscription is not distinct from subscriptions to all created events in a tenant.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/geteventsfromorganizers(organizerIds=['id1', 'id2'])",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to specific webinar's updated events

To receive updated notifications for a particular webinar level event, a subscription must be created for that unique event id. Subscription to a webinar's updated events will relay events related to updates for a particular webinar. 
This can be accomplished with the resource `solutions/virtualEvents/webinars/{eventId}` where eventId is the webinar id.

A tenant can only create single subscription to each distinct webinar per application.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{eventId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to session event notifications for a webinar.

Session notifications for a particular webinar can be subscribed to by specifying the resource as `solutions/virtualEvents/webinars/{eventId}/sessions` where eventId is the webinar id.
Subscription will have all notifications related to a webinar's sessions events will be sent for the change types desired.
A tenant may only have a single session level subscription for each distinct webinar per application.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{eventId}/sessions",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to a specific session's meeting call events

To subscribe to a specific session's meeting call events, please see [Change notifications for online meetings](changenotifications-for-onlinemeetings.md) for more information.

### Subscribe to all registrants for a particular event

Registant notifications for a particular event can be subscribed to by specifying the resource as `solutions/virtualEvents/webinars/{eventId}/registration/registrants` where eventId is the webinar id.
Subscription will relay all notifications of the relevant change types on registration events for a specific virtual event webinar.
A tenant may only have a single registrant level subscription per distinct webinar and application combination.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{eventId}/registration/registrants",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Receiving event notifications

Notifications will include the resource url of the changed resource. A separate request to graph will be required to obtain the information of the changed resource.

The below table indicates the supported notification and change types for the virtual events resource.

### Notification types

| Notification type                                                              | Resource id                                                                                    | Change types      |
|:-------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------|:------------------|
| [Webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta)       | solutions/virtualEvents/webinar/{eventId}                                                      | created, updated  |
| [Session](/graph/api/resources/virtualeventsession?view=graph-rest-beta)       | solutions/virtualEvents/webinar/{eventId}/sessions/{sessionId}                                 | created, updated  |
| [Registrant](/graph/api/resources/virtualeventregistrant?view=graph-rest-beta) | solutions/virtualEvents/webinar/{eventId}/registration/registrants/{registrantId}              | created, updated  |

## Event notification examples
### Event created
```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "created",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/events/",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/",
      "@odata.type": "#microsoft.graph.virtualEvent",
      "id": "solutions/virtualEvents/webinars/{eventId}/"
    }
  }]
}
```

### Event updated

```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "updated",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/webinars/{eventId}/",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/",
      "@odata.type": "#microsoft.graph.virtualEvent",
      "id": "solutions/virtualEvents/webinars/{eventId}/"
    }
  }]
}
```

## Session notification examples
### Session created
```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "created",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/webinars/{eventId}/sessions",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/sessions/{sessionId}",
      "@odata.type": "#microsoft.graph.virtualEventSession",
      "id": "solutions/virtualEvents/webinars/{eventId}/sessions/{sessionId}"
    }
  }]
}
```

### Session updated
```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "updated",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/webinars/{eventId}/sessions",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/sessions/sessionId}{sessionId}",
      "@odata.type": "#microsoft.graph.agents.subscriptionManagement.entities.graphNotificationPayload+GraphResourceData",
      "id": "solutions/virtualEvents/webinars/{eventId}/sessions/{sessionId}"
    }
  }]
}
```

### Session meeting call updated events. 
For more information about the types of notifications received for meeting call updates, please see [Online meeting notification types](changenotifications-for-onlinemeeting.md#event-notifications-types).

## Registrant notifications examples
### Registrant created
```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "created",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/webinars/{eventId}/registration/registrants",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/registration/registrants/{registrantId}",
      "@odata.type": "#microsoft.graph.virtualEventRegistrant",
      "id": "solutions/virtualEvents/webinars/{eventId}/registration/registrants/{registrantId}"
    }
  }]
}
```

### Registrant updated
```HTTP
{
  "value": [{
    "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
    "clientState": "secret client state",
    "changeType": "updated",
    "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
    "resource": "solutions/virtualEvents/webinars/{eventId}/registration/registrants",
    "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "solutions/virtualEvents/webinars/{eventId}/registration/registrants/{registrantId}",
      "@odata.type": "#microsoft.graph.virtualEventRegistrant",
      "id": "solutions/virtualEvents/webinars/{eventId}/registration/registrants/{registrantId}"
    }
  }]
}
```