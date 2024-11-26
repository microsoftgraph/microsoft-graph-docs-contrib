---
title: "Delete mutualTlsOauthConfiguration"
description: "Delete a mutualTlsOauthConfiguration object."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Delete mutualTlsOauthConfigurations

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Namespace: microsoft.graph

Removes the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-delete-mutualtlsoauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-delete-mutualtlsoauthconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

The `{mutualTlsOauthConfigurationId}` in the request is the value of the **id** property of the mutualTlsOauthConfiguration object.

```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

- If successful, this method returns a `204 No Content` response code.
- Mutualtlsauthconfigurations can't be deleted until all linked DeviceTemplates and their linked devices are deleted. Failure to do so results in a `400` response.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates can't be deleted until all linked devices are deleted. | Failure to do so results in a `400` response. |

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_mutualtlsoauthconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
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

