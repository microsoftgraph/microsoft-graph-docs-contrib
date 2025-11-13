---
title: "riskyAgent: dismiss"
description: Dismiss the risk of one or more riskyAgent objects. 
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# riskyAgent: dismiss

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Dismiss the risk of one or more [riskyAgent](../resources/riskyagent.md) objects. This action sets the targeted agent's **riskLevel** to `none`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskyagent-dismiss-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskyagent-dismiss-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-write](../includes/rbac-for-apis/rbac-identity-protection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityProtection/riskyAgents/dismiss
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|agentIds|String collection|Specify the unique identifiers for the agents to dismiss all risks. The unique identifier of an agent is equivalent to 'id' to the specific agent type. See [riskyAgentIdentity](../resources/riskyagentidentity.md), [riskyAgentIdentityBlueprintPrincipal](../resources/riskyagentidentityblueprintprincipal.md), and [riskyAgentUser](../resources/riskyagentuser.md).|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "riskyagentthis.dismiss"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityProtection/riskyAgents/dismiss
Content-Type: application/json

{
  "agentIds": [
    "29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
    "20f91ec9-d140-4d90-9cd9-f618587a1471"
  ]
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

