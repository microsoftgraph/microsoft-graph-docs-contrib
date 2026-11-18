---
title: "Update resourcePolicyConfiguration"
description: "Update the tenant-wide resourcePolicyConfiguration singleton."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Update resourcePolicyConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the tenant-wide [resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md) singleton.

Retrieve the current configuration and supply its `@odata.etag` value in the `If-Match` header to protect against concurrent changes. A stale ETag causes `412 Precondition Failed`; retrieve the latest configuration before retrying the update. When configuring the singleton for the first time, the initial GET response represents the default configuration and has no ETag.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicyconfiguration_update_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyconfiguration-update-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /admin/resourcePolicy/configuration
```

## Request headers

| Name          | Description                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type  | application/json. Required.                                                                               |
| If-Match      | The current configuration's ETag, returned in `@odata.etag`. Use when updating a stored configuration.    |

## Request body

In the request body, supply the following properties.

|Property|Type|Description|
|:---|:---|:---|
|privilegedReadSetting|[privilegedReadSetting](../resources/privilegedreadsetting.md)|The privileged-read application setting. Setting **appId** activates that application; setting it to null disables privileged reads.|

## Response

If successful, this method returns `204 No Content` with no response body.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicyconfiguration_update"} -->
```http
PATCH https://graph.microsoft.com/beta/admin/resourcePolicy/configuration
Content-Type: application/json
If-Match: "81c7c027-5530-4cd8-a915-110813a315ed"

{
  "privilegedReadSetting": {
    "appId": "47f68495-2543-41f3-85cd-bfa4da6c615a"
  }
}
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
