---
title: "signIn: confirmCompromised"
description: "Allow admins to mark Microsoft Entra sign-in events as risky for Microsoft Entra ID Protection."
author: "ddonhin"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# signIn: confirmCompromised

Namespace: microsoft.graph


Allow admins to mark an event in the Microsoft Entra [sign-in](../resources/signin.md) logs as risky. Events marked as risky by an admin are immediately flagged as high risk in Microsoft Entra ID Protection, overriding previous risk states. Admins can confirm that events flagged as risky by Microsoft Entra ID Protection are in fact risky.

For details about investigating Identity Protection risks, see [How to investigate risk](/azure/active-directory/identity-protection/howto-identity-protection-investigate-risk).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "signin-confirmcompromised-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/signin-confirmcompromised-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /auditLogs/signIns/confirmCompromised
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
|requestIds|String collection|The IDs of the sign in events that should be marked risky for Microsoft Entra ID Protection.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "signinthis.confirmcompromised"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/auditLogs/signIns/confirmCompromised
Content-Type: application/json

{
  "requestIds": [
    "String"
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

