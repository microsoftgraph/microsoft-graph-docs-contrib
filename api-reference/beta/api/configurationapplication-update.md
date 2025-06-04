---
title: "Update configurationApplication"
description: "Update the properties of a configurationApplication object."
author: "swatyario"
ms.date: 04/11/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Update configurationApplication

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [configurationApplication](../resources/configurationapplication.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationapplication-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationapplication-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/configurationManagement/configurationApplications/{configurationApplicationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|clientCredentials|[clientCredentials](../resources/clientcredentials.md)| Includes the **keyVaultUri** and **certificateName** properties that the user must have obtained during the creation of the key vault. Required.|
|description|String|User-friendly description of the **configurationApplication**. Optional.|
|displayName|String|User-friendly name given by the user during the creation the **configurationApplication**. Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_configurationapplication"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationApplications/f6db8379-6071-6f8a-e313-a97b31f4f6b5
Content-Type: application/json

{
  "displayName": "Contoso Test App Updated",
  "description": "Contoso Test App description Updated"
}
```

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
