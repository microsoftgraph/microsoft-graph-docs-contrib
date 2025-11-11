---
title: "Create userConfiguration"
description: "Create a new userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: apiPageType
---

# Create userConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [userConfiguration](../resources/userconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailsearchfolder-post-userconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailsearchfolder-post-userconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/mailFolders/{mailFolderId}/userConfigurations
POST /users/{usersId}/mailFolders/{mailFolderId}/userConfigurations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [userConfiguration](../resources/userconfiguration.md) object.

You can specify the following properties when you create a **userConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|binaryData|Binary|Arbitrary binary data. Optional.|
|structuredData|[structuredDataEntry](../resources/structureddataentry.md) collection|Key-value pairs of supported data types. Optional.|
|xmlData|Binary|Binary data for storing serialized XML. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [userConfiguration](../resources/userconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_userconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/mailFolders/{mailFolderId}/userConfigurations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userConfiguration",
  "binaryData": "Binary",
  "xmlData": "Binary",
  "structuredData": [
    {
      "@odata.type": "microsoft.graph.structuredDataEntry"
    }
  ]
}
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
HTTP/1.1 201 Created
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
