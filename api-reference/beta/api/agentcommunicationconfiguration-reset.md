---
title: "agentCommunicationConfiguration: reset"
description: "Reset the communication configuration override for an agent identity, restoring effective configuration resolution to the agent blueprint level."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# agentCommunicationConfiguration: reset

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset the communication configuration override for an [agentIdentity](../resources/agentidentity.md), which restores effective configuration resolution to the agent blueprint level. The action takes no request body and returns the agent blueprint's [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) as the new effective configuration for the agent identity.

> [!NOTE]
> When you set the **endpointConfiguration**, we recommend that you use the `apiBased` [agentEndpointConfigurationType](../resources/enums.md#agentendpointconfigurationtype-values) rather than `botBased`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentcommunicationconfiguration_reset" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentcommunicationconfiguration-reset-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/microsoft.graph.agentIdentity/{agentIdentityId}/communicationConfiguration/reset
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer \{token\}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and an [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentcommunicationconfiguration_reset"
}-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity/1f554dbf-8c7a-42dc-8f92-1a3b4c5d6e7f/communicationConfiguration/reset
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentcommunicationconfiguration-reset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentCommunicationConfiguration"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals/microsoft.graph.agentIdentity/communicationConfiguration/$entity",
  "isOverridableAtAgentIdLevel": true,
  "endpointConfiguration": {
    "configurationType": "apiBased",
    "apiBased": {
      "callbackUri": "https://agent.contoso.com/api/messages"
    },
    "botBased": null
  },
  "teamworkConfiguration": {
    "groupChatConfiguration": {
      "messageNotificationMode": "atMentionedMessagesOnly"
    },
    "channelConfiguration": {
      "messageNotificationMode": "atMentionedMessagesOnly"
    },
    "oneOnOneChatConfiguration": {
      "messageNotificationMode": "allMessages"
    },
    "meetingChatConfiguration": {
      "messageNotificationMode": "atMentionedMessagesOnly"
    }
  }
}
```
