---
title: "Get change notifications for Microsoft Teams virtual event updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to various events for Microsoft Teams online meetings."
author: "awang119"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: "scenarios:getting-started"
---

# Get change notifications for Microsoft Teams virtual event updates

Change notifications in Microsoft Graph support subscriptions to virtual events. Change notifications provide a low-latency model by allowing you to maintain a webhook to Microsoft Teams virtual events. Virtual event subscriptions have a maximum period of a day. To extend the lifetime of a subscription, the subscription must be renewed before the expiry period. Alternatively, a user might decide to create a new subscription for the resource after the expiry of an existing subscription. For more details, see [Use the Microsoft Graph API to get change notifications](/graph/api/resources/webhooks).

## Permissions

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Not supported.                                           | Not supported.     |
| Delegated (personal Microsoft account)| Not supported.                                           | Not supported.     |
| Application                           | VirtualEvent.Read.All                                    | Beta               |

## Subscribable virtual events

The following table provides a summary of subscribable virtual event types, the resource URLs used in the subscription payload, and the supported change types for notification subscription.

| Virtual event types                                     | Resource URL                                                                             | Supported change types    |
|:-------------------------------------------------------|:------------------------------------------------------------------------------------------|:--------------------------|
| All events (tenant-level)                              | `solutions/virtualEvents/events`                                                            | created                   |
| All events (tenant-level by organizer/coorganizer IDs) | `solutions/virtualEvents/events/getEventsFromOrganizers(organizerIds=['id1', 'id2'])`       | created                   |
| The events of a specific webinar                                     | `solutions/virtualEvents/webinars/{webinarId}`                                              | updated                   |
| The session events of a webinar                              | `solutions/virtualEvents/webinars/{webinarId}/sessions`                                     | created, updated          |
| The registration events of a webinar                      | `solutions/virtualEvents/webinars/{webinarId}/registration/registrants`                     | created, updated          |

>**Note:** Replace values in with parenthesis with actual values.

## Subscribe to all events created in a tenant

You can specify subscriptions for all events of a unique app and tenant in the subscription payload by using the following syntax: `solutions/virtualEvents/events`. The subscription designates the notification URL to receive all event-created notifications in a tenant for virtual events. Only event-created notifications are supported for this subscription. A tenant can only have one type of this subscription per application.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Subscribe to all events created in a tenant with relevant organizers

You can subscribe to all events that include any members of a set of organizers or coorganizers by using the following resource: 
`solutions/virtualEvents/events/getEventsFromOrganizers(organizerIds=['id1', 'id2'])`. These subscriptions receive any created notifications for all virtual events for a set of organizer or coorganizer IDs. This subscription is considered a subscription to all events created in a tenant.  

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/events/getEventsFromOrganizers(organizerIds=['id1', 'id2'])",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Subscribe to updated events of a specific webinar

To receive updated notifications for a particular webinar, you need to create a subscription for that unique webinar by using the following resource:  `solutions/virtualEvents/webinars/{webinarId}`.

An application can have only one subscription per webinar inside a tenant.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{webinarId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Subscribe to session event notifications for a webinar

To subscribe to notifications for sessions that are created or updated in a webinar, specify the resource as `solutions/virtualEvents/webinars/{webinarId}/sessions`.

An application can only have a single session level subscription per webinar in a tenant.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{webinarId}/sessions",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Subscribe to meeting call events of a specific session

For information about how to subscribe to meeting call events of a specific session, see [Get change notifications for Microsoft Teams meeting call updates](/graph/changenotifications-for-onlinemeeting).

## Subscribe to all registrants for a particular event

To subscribe to notifications for registration events of a webinar, specify the resource as `solutions/virtualEvents/webinars/{webinarId}/registration/registrants`.

An application can only have a single registrant level subscription per webinar inside a tenant.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created, updated",
  "notificationUrl": "https://webhook.contoso.com/api",
  "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
  "resource": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "secretClientState"
}
```

## Receiving event notifications

Notifications include the resource URL of the changed resource. You can send a separate request to the resource URL to get information about a created or updated resource.

### Notification types

The following table indicates the supported notification and change types for the virtual events resource.

| Notification type                                                              | Resource ID                                                                                    | Change types      |
|:-------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------|:------------------|
| [Webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta)       | `solutions/virtualEvents/webinars/{webinarId}`                                                      | created, updated  |
| [Session](/graph/api/resources/virtualeventsession?view=graph-rest-beta)       | `solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}`                                 | created, updated  |
| [Registrant](/graph/api/resources/virtualeventregistrant?view=graph-rest-beta) | `solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}`              | created, updated  |

## Event notification examples

The following JSON examples show the responses for each supported change type of an event.

### Event created

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "created",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/events/",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/",
        "@odata.type": "#microsoft.graph.virtualEvent",
        "id": "solutions/virtualEvents/webinars/{webinarId}/"
      }
    }
  ]
}
```

### Event updated

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "updated",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/webinars/{webinarId}/",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/",
        "@odata.type": "#microsoft.graph.virtualEvent",
        "id": "solutions/virtualEvents/webinars/{webinarId}/"
      }
    }
  ]
}
```

## Session notification examples

The following JSON examples show the responses for each supported change type of a session.

### Session created

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "created",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/webinars/{webinarId}/sessions",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}",
        "@odata.type": "#microsoft.graph.virtualEventSession",
        "id": "solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}"
      }
    }
  ]
}
```

### Session updated

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "updated",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/webinars/{webinarId}/sessions",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/sessions/sessionId}{sessionId}",
        "@odata.type": "#microsoft.graph.agents.subscriptionManagement.entities.graphNotificationPayload+GraphResourceData",
        "id": "solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}"
      }
    }
  ]
}
```

### Session meeting call updated events

For information about the types of notifications received for meeting call updates, see [Event notifications types](/graph/changenotifications-for-onlinemeeting#event-notifications-types).

## Registrant notifications examples

The following JSON examples show the responses for each supported change type of a registrant.

### Registrant created

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "created",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}",
        "@odata.type": "#microsoft.graph.virtualEventRegistrant",
        "id": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}"
      }
    }
  ]
}
```

### Registrant updated

```json
{
  "value": [
    {
      "subscriptionId": "7015b436-a8b8-4260-af80-5af8cba32e62",
      "clientState": "secret client state",
      "changeType": "updated",
      "tenantId": "f5b076c8-b508-4ba3-a1a7-19d1c0bcef03",
      "resource": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants",
      "subscriptionExpirationDateTime": "2023-01-28T00:00:00.0000000Z",
      "resourceData": {
        "@odata.id": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}",
        "@odata.type": "#microsoft.graph.virtualEventRegistrant",
        "id": "solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}"
      }
    }
  ]
}
```