---
title: "Get change notifications for Microsoft Teams virtual event updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to various events for Microsoft Teams online meetings."
author: "benlee-msft"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams virtual event updates

## Subscribe to notifications for virtual event updates.

Subscriptions for virtual events can be persisted for a max period of a *single day*. Renewal of subscription or a new subscription must be created to sustain notifications for virtual events. Please review webhook subscriptions for more details about the subscription payload. Subscriptions to virtual event resources have a max expiration time of 1 day. Subscriptions must either be created again or renewed. Please review [Subscriptions]() for more details.

### Permissions

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Not supported.                                           | Not support        |
| Delegated (personal Microsoft account)| Not supported.                                           | Not supported.     |
| Application                           | VirutalEvent.Read.All                                    | beta               |

To get change notifications for virtual events, you may specify the resource as the following: 

### Subscribeable resources

| Resource Type                                     | Resource                                                                                  | Supported change types    |
|:--------------------------------------------------|:------------------------------------------------------------------------------------------|:--------------------------|
| Event (Tenant-level)                              | solutions/virtualEvents/events                                                            | created                   |
| Event (Tenant-level by organizer/coorganizer ids) | solutions/virtualEvents/events/geteventsfromorganizers(organizerIds=['id1', 'id2'])       | created                   |
| Event                                             | solutions/virtualEvents/webinars/{webinarId}                                              | updated                   |
| Sessions (Event-level subscription)               | solutions/virtualEvents/webinars/{webinarId}/sessions                                     | created, updated          |
| Session meeting call                              | communications/onlineMeetings/?$filter=JoinWebUrl eq '{meetingJoinUrl}'                   | updated                   |
| Registrant (All registants for a webinar)         | solutions/virtualEvents/webinars/{webinarId}/registration/registrants                     | created, updated          |

**Note:** Replace values with paranthesis with actual values.

### Subscription to all created events in a tenant

Subscripitions for all created events for a unique app and tenant is accomplished by having `solutions/virtualEvents/events` as the resource in the subscription payload.
Only event created notifications are supported for this subscription.

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

Subscriptions to all created events for a tenant where a group of organizers/coorganizers are a part of can be accomplished with the resource specified as 
`"solutions/virtualEvents/events/geteventsfromorganizers(organizerIds=['id1', 'id2'])"`. These subscriptions will receive any created notifications for events where id1 and id2 are either the organizer or co-organizer.

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

### Subscribe to specific event's updated and deleted

To receive updated and deleted notifications for a particular event, a subscription must be created for that unique event id.
The resource `solutions/virtualEvents/events/{eventId}` must contain a valid event id and the changet type must include the notifications desired.

A subscription can be created for a unique app, tenant, and resource combination for subscriptions to a specific event.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/{eventId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to sessions notifications for a particular virtual event.

Session notifications for a particular event can be subscribed to by specifying the resource as `solutions/virtualEvents/events/{eventId}/sessions`.

Only a single session level subscription can exist for a particular event for a unique app and tenant combination.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/{eventId}/sessions",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

### Subscribe to a specific session's meeting call events

To subscribe to a specific session's meeting call events, please see [Change notifications for online meetings](changenotifications-for-onlinemeetings.md) for more information.

### Subscribe to all registrants for a particular event

Registant notifications for a particular event can be subscribed to by specifying the resource as `solutions/virtualEvents/events/{eventId}/registration/registrants`.

Only a single registrant level subscription can exist for a particular event for a unique app and tenant combination.

```HTTP
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/{eventId}/microsoft.graph.virtualEventwebinar/registration/registrants",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Receiving event notifications

Notifications will include the resource url of the changed resource. A separate request to graph will be required to obtain the information of the changed resource.

The below table indicates the supported notification and change types for the virtual events resource.

### Notification types

| Notification type      | Resource id                                                                                    | Change types      |
|:-----------------------|:-----------------------------------------------------------------------------------------------|:------------------|
| [Event]()              | solutions/virtualEvents/events/{eventId}                                                       | created, updated  |
| [Session]()            | solutions/virtualEvents/events/{eventId}/sessions/{sessionId}                                  | created, updated  |
| [Registrant]()         | solutions/virtualEvents/webinar/{eventId}/registration/registrants/{registrantId}              | created, updated  |

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
    "resource": "solutions/virtualEvents/events/{eventId}/",
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
    "resource": "solutions/virtualEvents/events/{eventId}/sessions",
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
    "resource": "solutions/virtualEvents/events/{eventId}/sessions",
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