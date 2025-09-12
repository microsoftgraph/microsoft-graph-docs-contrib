---
title: "incidentTask: executeResponseAction"
description: "Execute a remediation action in Microsoft Defender XDR to resolve a security incident."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# incidentTask: executeResponseAction

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Execute a remediation action on a Microsoft Defender XDR incident task. Only the following **actionType** values are supported for automated execution: `collectInvestigationPackage`, `isolateDevice`, `unRestrictAppExecution`, `unIsolateDevice`, `restrictAppExecution`, `runAntiVirusScan`, `stopAndQuarantineFile`, `submitIocRule`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-executeresponseaction-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-executeresponseaction-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/incidentTasks/{incidentTaskId}/executeResponseAction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. If a status code other than 2xx or 404 is returned or if a provider times out, see [Microsoft Graph Security API error responses](../resources/security-error-codes.md).
> [!NOTE]
> Attempting to execute a response action with an unsupported actionType will return a `400 Bad Request` error with the message "Currently {incidentTask.ActionType} is not supported".

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "postincidenttaskexecuteresponseaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidentTasks/213213/executeResponseAction
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/postincidenttaskexecuteresponseaction-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/postincidenttaskexecuteresponseaction-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/postincidenttaskexecuteresponseaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/postincidenttaskexecuteresponseaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/postincidenttaskexecuteresponseaction-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/postincidenttaskexecuteresponseaction-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/postincidenttaskexecuteresponseaction-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "name": "postincidenttaskexecuteresponseaction",
  "isEmpty": true,
  "noContent": true
}
-->
``` http
HTTP/1.1 204 No Content
```
