---
title: "Delete configurationApplication"
description: "Delete a configurationApplication object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Delete configurationApplication

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [configurationApplication](../resources/configurationapplication.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-delete-configurationapplications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-delete-configurationapplications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/configurationManagement/configurationApplications('{configurationApplicationId}')
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

### Example 1: Deletes a configurationApplication object

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_configurationapplication"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/configurationManagement/configurationApplications('f6db8379-6071-6f8a-e313-a97b31f4f6b5')
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

