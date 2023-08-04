---
title: "Get change notifications for Microsoft Teams call records"
description: "Use change notifications in Microsoft Graph to recieve notifications for created and updated call records."
author: "mcm223"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams call records

Change notifications in Microsoft Graph support subscriptions to call records, allowing you to receive a continuous feed of call records as they are created or updated. Call records provide usage and diagnostic information about the calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. Usage and diagnostic data can be consumed to produce custom reporting for your business to help monitor adoption or to troubleshoot call quality issues.

### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | CallRecords.Read.All | v1.0 |

### Example subscription

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

Change notifications for call records support both `create` and `update` notification types. A call record is created after a call or meeting ends and will remain available for 30 days. Because portions of a call record rely on client-side signals that can be delayed or interrupted by network issues, a call record may be updated with new or revised attributes after its initial creation. These changes will result in an `update` notification and the record will increment its `version` field to reflect that a change has occurred.

The latency of change notifications and the maximum expiry period of a subscription are defined in the [change notifications overview](/graph/webhooks).

## Example notification

```json
{
    "value":[{
        "subscriptionId":"{Subscription id}",
        "clientState":"{Secret client state}",
        "changeType":"created",
        "resource":"communications/callRecords/{Call id}",
        "subscriptionExpirationDateTime":"2023-02-28T00:00:00.000+00:00",
        "resourceData":{
            "@odata.type":"#Microsoft.Graph.callrecord",
            "@odata.id":"communications/callRecords/{Call id}",
            "id":"{Call id}"
        },
        "tenantId":"{Organization/Tenant id}"
    }]
}
```

- The **Call id** property corresponds to a specific [call record resource](/graph/api/resources/callrecords-callrecord), which can be retrieved using the [Get callRecord](/graph/api/callrecords-callrecord-get) API.

## See also

- [Microsoft Graph change notifications](/graph/webhooks)
- [Microsoft Teams API overview](/graph/teams-concept-overview)
- [Call record resource](/graph/api/resources/callrecords-callrecord)
