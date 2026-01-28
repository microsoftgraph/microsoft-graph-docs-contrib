---
title: "Get autoAuditingConfiguration"
description: "Read the properties and relationships of microsoft.graph.security.autoAuditingConfiguration object."
author: "SamuelBenichou"
ms.date: 09/09/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get autoAuditingConfiguration

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of an [microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_autoauditingconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-autoauditingconfiguration-get-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/settings/autoAuditingConfiguration
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_autoauditingconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/settings/autoAuditingConfiguration
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.autoAuditingConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.autoAuditingConfiguration",
    "isAutomatic": true
  }
}
```
