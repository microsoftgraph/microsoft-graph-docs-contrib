---
title: "Delete governancePolicyTemplate"
description: "Delete a governance policy template."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Delete governancePolicyTemplate

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) object. You can't delete the default template or templates currently used by active relationships.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_delete_governancepolicytemplates" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-delete-governancepolicytemplates-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /directory/tenantGovernance/governancePolicyTemplates/{governancePolicyTemplateId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_governancepolicytemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-governancepolicytemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-governancepolicytemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-governancepolicytemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-governancepolicytemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-governancepolicytemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-governancepolicytemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

