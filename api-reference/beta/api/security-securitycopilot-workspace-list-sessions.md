---
title: "List session objects"
description: "Get a list of the sessions in Security Copilot."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# List session objects

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sessions](../resources/security-securitycopilot-session.md) in Security Copilot.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-securitycopilot-workspace-list-sessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-workspace-list-sessions-permissions.md)]

[!INCLUDE [rbac-security-copilot-apis](../includes/rbac-for-apis/rbac-security-copilot-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/securityCopilot/workspaces/{workspaceId}/sessions
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$select` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [session](../resources/security-securitycopilot-session.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_session"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/securityCopilot/workspaces/default/sessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-session-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-session-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-session-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-session-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-session-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-session-python-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/securityCopilot/workspaces('default')/sessions",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET security/securityCopilot/workspaces('<key>')/sessions?$select=createdDateTime,displayName",
    "value": [
        {
            "id": "f0f54c69-8f8a-4f33-b6e3-386d58b408db",
            "createdDateTime": "2025-10-15T15:54:58.4862768Z",
            "lastModifiedDateTime": "2025-10-15T15:54:58.4862768Z",
            "displayName": null
        },
        {
            "id": "8e95c36e-c9bd-4e14-8317-3cd4332e1e3b",
            "createdDateTime": "2025-09-17T19:23:41.1506601Z",
            "lastModifiedDateTime": "2025-09-17T19:28:21.2902705Z",
            "displayName": "who am i"
        }
    ]
}

```

