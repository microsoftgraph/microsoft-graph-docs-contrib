---
title: "synchronizationJob: pause"
description: "Temporarily stop synchronization. All the progress, including job state, is persisted, and the job continues from where it left off when a Start call is made."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.topic: reference
---

# synchronizationJob: pause

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Temporarily stop a running synchronization job. All the progress, including job state, is persisted, and the job continues from where it left off when a [start](../api/synchronization-synchronizationjob-start.md) call is made.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "synchronization_synchronizationjob_pause" } -->
[!INCLUDE [permissions-table](../includes/permissions/synchronization-synchronizationjob-pause-permissions.md)]

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/{id}/synchronization/jobs/{jobId}/pause
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, returns a `204 No Content` response. It doesn't return anything in the response body.

## Example

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_pause"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/pause
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/synchronizationjob-pause-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/synchronizationjob-pause-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/synchronizationjob-pause-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/synchronizationjob-pause-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/synchronizationjob-pause-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/synchronizationjob-pause-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/synchronizationjob-pause-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/synchronizationjob-pause-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of a response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationJob: pause",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
	"Error: microsoft.graph.microsoft.graph/servicePrincipals:
      /servicePrincipals/{var}/synchronization/jobs/{var}/pause
      Uri path requires navigating into unknown object hierarchy: missing property 'jobs' on 'synchronization'. Possible issues:
  	 1) Doc bug where 'jobs' isn't defined on the resource.
  	 2) Doc bug where 'jobs' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'synchronization' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
