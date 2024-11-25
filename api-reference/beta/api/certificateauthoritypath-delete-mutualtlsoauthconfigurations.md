---
title: "Delete a mutual TLS OAuth Configuration"
description: "Delete a mutual TLS OAuth Configuration."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Delete mutualTlsOauthConfigurations

Namespace: microsoft.graph

Removes the specified [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

The `{id}` in the request is the value of the **id** property of the device template.

```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

## Request headers

For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

- If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.
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
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

