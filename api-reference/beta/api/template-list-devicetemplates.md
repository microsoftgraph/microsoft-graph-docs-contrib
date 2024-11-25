---
title: "List deviceTemplates"
description: "List device templates."
author: "sgeislinger"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# List DeviceTemplates

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of devicesTemplates registered in the directory.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "template-list-devicetemplates-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/template-list-devicetemplates-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates
```

## Optional query parameters

This method supports the `$select` & `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

### Example Filters/Select

|Pattern|Supported|Syntax|
|-------|:---------:|------|
|Filter|✓|`/directory/templates/deviceTemplates/?$filter=id eq '{guid}'`|
|Select|✓|`/directory/templates/deviceTemplates/?$select=id,operatingSystem'`|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request Body

Do not supply a request body for this method.

## Response

- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "list_devicetemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceTemplate",
      "id": "a4d7a4eb-8ade-d364-56b2-bcb659b3c6f9",
      "deletedDateTime": "String (timestamp)",
      "mutualTlsOauthConfigurationId": "String",
      "mutualTlsOauthConfigurationTenantId": "String",
      "deviceAuthority": "String",
      "manufacturer": "String",
      "model": "String",
      "operatingSystem": "String"
    }
  ]
}
```
