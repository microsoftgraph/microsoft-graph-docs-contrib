---
title: "Update communicationConfiguration"
description: "Replace the communication configuration of an agent identity."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Update communicationConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Replace the [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) of an [agentIdentity](../resources/agentidentity.md). This operation is a full replace: the request replaces the entire configuration object with the supplied body. An agent identity can override the configuration only when the source blueprint sets **isOverridableAtAgentIdLevel** to `true`.

> [!NOTE]
> When you set the **endpointConfiguration**, we recommend that you use the `apiBased` [agentEndpointConfigurationType](../resources/enums.md#agentendpointconfigurationtype-values) rather than `botBased`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentity_update_communicationconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-update-communicationconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /servicePrincipals/microsoft.graph.agentIdentity/{agentIdentityId}/communicationConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer \{token\}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a full JSON representation of the [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) object. Because this operation is a full replace, include all properties you want to persist; properties that are omitted are cleared.

|Property|Type|Description|
|:---|:---|:---|
|isOverridableAtAgentIdLevel|Boolean|Indicates whether individual agent instances created from this blueprint can override the **endpointConfiguration**. Optional.|
|endpointConfiguration|[agentEndpointConfiguration](../resources/agentendpointconfiguration.md)|The endpoint binding (bot ID or callback URI) that the agent uses to receive messages. Optional.|
|teamworkConfiguration|[agentTeamworkConfiguration](../resources/agentteamworkconfiguration.md)|The per-conversation-context message notification settings that agents use. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentcommunicationconfiguration_identity"
}-->
``` http
PUT https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity/1f554dbf-8c7a-42dc-8f92-1a3b4c5d6e7f/communicationConfiguration
Content-Type: application/json

{
  "isOverridableAtAgentIdLevel": false,
  "endpointConfiguration": {
    "configurationType": "apiBased",
    "apiBased": {
      "callbackUri": "https://agent.contoso.com/api/messages"
    }
  },
  "teamworkConfiguration": {
    "groupChatConfiguration": {
      "messageNotificationMode": "atMentionedMessagesOnly"
    },
    "channelConfiguration": {
      "messageNotificationMode": "allMessages"
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentcommunicationconfiguration-identity-javascript-snippets.md)]
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
  "isOverridableAtAgentIdLevel": false,
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
      "messageNotificationMode": "allMessages"
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
