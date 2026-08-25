---
title: "Get communicationConfiguration"
description: "Read the communication configuration of an agent identity blueprint."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get communicationConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of the [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) of an [agentIdentityBlueprint](../resources/agentidentityblueprint.md).

> [!NOTE]
> When you set the **endpointConfiguration**, we recommend that you use the `apiBased` [agentEndpointConfigurationType](../resources/enums.md#agentendpointconfigurationtype-values) rather than `botBased`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprint_get_communicationconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-get-communicationconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{agentIdentityBlueprintId}/microsoft.graph.agentIdentityBlueprint/communicationConfiguration
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer \{token\}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_agentcommunicationconfiguration_blueprint"
}-->
``` http
GET https://graph.microsoft.com/beta/applications/2a665ec0-9d8b-43ed-9fa3-2b4c5d6e7f80/microsoft.graph.agentIdentityBlueprint/communicationConfiguration
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
