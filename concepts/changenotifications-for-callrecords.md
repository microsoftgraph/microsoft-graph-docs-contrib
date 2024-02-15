---
title: "Get change notifications for Microsoft Teams call records"
description: "Use change notifications in Microsoft Graph to receive notifications for created and updated call records."
author: "mcm223"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams call records

Change notifications in Microsoft Graph enable subscriptions to call records, providing a continuous stream of call record updates as they're created or modified. Call records offer valuable usage and diagnostic insights into your organization's calls and online meetings when using Microsoft Teams or Skype for Business. This data can be harnessed for custom reporting, facilitating the monitoring of adoption and the troubleshooting of call quality issues.

## Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | CallRecords.Read.All | v1.0 |

## Examples

### Example 1: Subscription request

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/communications/callRecords",
  "expirationDateTime": "2023-02-28T00:00:00.0000000Z",
  "clientState": "{Secret client state}"
}
```

Change notifications for call records support both `create` and `update` notification types. A call record is created after a call or meeting ends and remains accessible for 30 days. However, because specific call record attributes depend on client-side signals, which can be subject to delays or interruptions due to network issues, a call record may undergo updates with new or revised information after its initial creation. These changes trigger an `update` notification, and the record's `version` field is incremented to indicate the modification.

The latency of change notifications and the maximum subscription expiration period are defined in the [change notifications overview](/graph/webhooks).

### Example 2: Subscription notification
```json
{
    "value":[{
        "subscriptionId":"{Subscription id}",
        "clientState":"{Secret client state}",
        "changeType":"created",
        "resource":"communications/callRecords/{Call id}",
        "subscriptionExpirationDateTime":"2023-02-28T00:00:00.000+00:00",
        "resourceData":{
            "@odata.type":"#Microsoft.Graph.callRecord",
            "@odata.id":"communications/callRecords/{Call id}",
            "id":"{Call id}"
        },
        "tenantId":"{Organization/Tenant id}"
    }]
}
```

- The **Call ID** property corresponds to a specific [call record resource](/graph/api/resources/callrecords-callrecord), which can be retrieved using the [Get callRecord](/graph/api/callrecords-callrecord-get) API.

## Related content

- [Microsoft Graph change notifications](/graph/webhooks)
- [Microsoft Teams API overview](/graph/teams-concept-overview)
- [Call record resource](/graph/api/resources/callrecords-callrecord)
