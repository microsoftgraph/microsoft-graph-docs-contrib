---
title: "Get resourcePolicyConfiguration"
description: "Read the tenant-wide resourcePolicyConfiguration singleton."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Get resourcePolicyConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the tenant-wide [resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md) singleton.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyconfiguration_get_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyconfiguration-get-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /admin/resourcePolicy/configuration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `200 OK` and a [resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md) object in the response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyconfiguration_get"} -->
```http
GET https://graph.microsoft.com/beta/admin/resourcePolicy/configuration
```

### Response

<!-- {"blockType": "response", "truncated": false, "@odata.type": "microsoft.graph.resourcePolicyConfiguration"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.resourcePolicyConfiguration",
  "@odata.etag": "\"81c7c027-5530-4cd8-a915-110813a315ed\"",
  "privilegedReadSetting": {
    "appId": "47f68495-2543-41f3-85cd-bfa4da6c615a"
  },
  "lastModifiedDateTime": "2026-10-22T12:10:00Z"
}
```
