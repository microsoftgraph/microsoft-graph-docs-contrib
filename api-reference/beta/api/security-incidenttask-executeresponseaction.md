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

## Permissions

One of the following permissions is required to call this API. To learn more, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-executeresponseaction"
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

The API supports only these action types:
- collectInvestigationPackage
- isolateDevice
- unRestrictAppExecution
- unIsolateDevice
- restrictAppExecution
- runAntiVirusScan
- stopAndQuarantineFile
- submitIocRule

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "postincidenttaskexecuteresponseaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidentTasks/213213/executeResponseAction
```

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
