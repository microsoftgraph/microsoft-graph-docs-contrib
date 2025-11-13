---
title: "riskyAgent: confirmSafe"
description: 'Identity Protection of agents - confirmSafe of a riskyAgent'
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# riskyAgent: confirmSafe

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Confirm one or more [riskyAgent](../resources/riskyagent.md) objects as safe. This action sets the targeted agent's risk level to none.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskyagent-confirmsafe-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskyagent-confirmsafe-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-write](../includes/rbac-for-apis/rbac-identity-protection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityProtection/riskyAgents/confirmSafe
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
|agentIds|String collection|Specify the risky agent IDs to mark as safe.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "riskyagentthis.confirmsafe"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityProtection/riskyAgents/confirmSafe
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
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

