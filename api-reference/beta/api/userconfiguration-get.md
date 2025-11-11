---
title: "Get userConfiguration"
description: "Read the properties and relationships of userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: apiPageType
---

# Get userConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [userConfiguration](../resources/userconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/mailFolders/{mailFolderId}/userConfigurations/{userConfigurationId}
GET /users/{usersId}/mailFolders/{mailFolderId}/userConfigurations/{userConfigurationId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userConfiguration](../resources/userconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_userconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/mailFolders/{mailFolderId}/userConfigurations/{userConfigurationId}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userConfiguration",
  "id": "a10e39d7-5dd4-6dbf-42b0-794e8429ed0f",
  "binaryData": "Binary",
  "xmlData": "Binary",
  "structuredData": [
    {
      "@odata.type": "microsoft.graph.structuredDataEntry"
    }
  ]
}
```
