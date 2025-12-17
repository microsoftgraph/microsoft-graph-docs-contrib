---
title: "Update autoAuditingConfiguration"
description: "Update the properties of a autoAuditingConfiguration object."
author: "SamuelBenichou"
ms.date: 09/09/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update autoAuditingConfiguration

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_autoauditingconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-autoauditingconfiguration-update-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/autoAuditingConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

|Property|Type|Description|
|:---|:---|:---|
|isAutomatic|Boolean|Required.|


## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_autoauditingconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/autoAuditingConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.autoAuditingConfiguration",
  "isAutomatic": "Boolean"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-autoauditingconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```
