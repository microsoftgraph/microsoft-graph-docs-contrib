---
title: "Get session"
description: "Get the details of a microsoft.graph.security.securityCopilot.session object in Security Copilot."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# Get session

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of a [microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) object in Security Copilot.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_securitycopilot_session_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-session-get-permissions.md)]

[!INCLUDE [rbac-security-copilot-apis](../includes/rbac-for-apis/rbac-security-copilot-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_session"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/securityCopilot/workspaces/default/sessions/ecdfb9b3-58f5-457f-a18c-4a477890b252
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-session-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-session-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-session-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-session-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-session-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-session-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.session"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/securityCopilot/workspaces('default')/sessions/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET security/securityCopilot/workspaces('<key>')/sessions('<guid>')?$select=createdDateTime,displayName",
    "id": "ecdfb9b3-58f5-457f-a18c-4a477890b252",
    "createdDateTime": "2025-10-22T20:10:54.4940649Z",
    "lastModifiedDateTime": "2025-10-22T20:10:54.4940649Z",
    "displayName": "API: who am I"
}
```

