---
title: "identityAccounts: invokeAction"
description: "Perform available actions for identity security identity accounts. This allows reading and performing identity security actions on behalf of the signed-in identity."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# identityAccounts: invokeAction

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform available actions for identity security identity accounts. This allows reading and performing identity security actions on behalf of the signed-in identity.

## Permissions

One of the following permissions is required to call this API. Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identityaccounts-invokeaction-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identityaccounts-invokeaction-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/identities/identityAccounts/{identityAccountsId}/invokeAction
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
|accountId|String|The identifier of the account to perform the action on.|
|action|microsoft.graph.security.action|The type of action to perform on the account.|
|identityProvider|microsoft.graph.security.identityProvider|The identity provider associated with the account.|

## Response

If successful, this action returns a `200 OK` response code and a [invokeActionResult](../resources/security-invokeactionresult.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "identityaccountsthis.invokeaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/identities/identityAccounts/{identityAccountsId}/invokeAction
Content-Type: application/json

{
  "accountId": "String",
  "action": "String",
  "identityProvider": "String"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.invokeActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.security.invokeActionResult"
  }
}
```