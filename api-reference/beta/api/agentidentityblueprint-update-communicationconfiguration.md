---
title: "Update communicationConfiguration"
description: "Replace the communication configuration of an agent identity blueprint."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Update communicationConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Replace the [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) of an [agentIdentityBlueprint](../resources/agentidentityblueprint.md). This operation is a full replace: the request replaces the entire configuration object with the supplied body.

> [!NOTE]
> When you set the **endpointConfiguration**, we recommend that you use the `apiBased` [agentEndpointConfigurationType](../resources/enums.md#agentendpointconfigurationtype-values) rather than `botBased`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprint_update_communicationconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-update-communicationconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /applications/{agentIdentityBlueprintId}/microsoft.graph.agentIdentityBlueprint/communicationConfiguration
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

<!-- {
  "blockType": "request",
  "name": "update_agentcommunicationconfiguration_blueprint"
}-->
``` http
PUT https://graph.microsoft.com/beta/applications/2a665ec0-9d8b-43ed-9fa3-2b4c5d6e7f80/microsoft.graph.agentIdentityBlueprint/communicationConfiguration
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('2a665ec0-9d8b-43ed-9fa3-2b4c5d6e7f80')/microsoft.graph.agentIdentityBlueprint/communicationConfiguration/$entity",
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
