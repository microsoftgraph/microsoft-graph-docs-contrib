---
title: "signIn: confirmCompromised"
description: "Allow admins to mark Azure AD sign in events as risky for Azure AD Identity Protection."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# signIn: confirmCompromised
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allow admins to mark an event in the Azure AD sign in logs as risky. Events marked as risky by an admin are immediately flagged as high risk in Azure AD Identity Protection, overriding previous risk states. Admins can confirm that events flagged as risky by Azure AD Identity Protection are in fact risky.

For details about investigating Identity Protection risks, see [How to investigate risk](/azure/active-directory/identity-protection/howto-identity-protection-investigate-risk).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityRiskyUser.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|IdentityRiskEvent.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|requestIds|String collection|The IDs of the sign in events that should be marked risky for Azure AD Identity Protection.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "signinthis.confirmcompromised"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/signIns/confirmCompromised
Content-Type: application/json

{
  "requestIds": [
    "f01c6af6-6683-4a37-a945-0a925501eede",
    "42bf60ac-d0cb-4206-aa5c-101884298f55",
    "f09c8f14-8d8e-42cf-8a7e-732b0594e79b"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/signinthisconfirmcompromised-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/signinthisconfirmcompromised-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/signinthisconfirmcompromised-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/signinthisconfirmcompromised-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/signinthisconfirmcompromised-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/signinthisconfirmcompromised-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

