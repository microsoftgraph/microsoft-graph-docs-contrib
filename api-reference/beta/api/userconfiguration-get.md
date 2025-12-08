---
title: "Get userConfiguration"
description: "Read the properties and relationships of userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
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

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

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
  "name": "get_userconfiguration",
  "sampleKeys": ["inbox", "MyApp"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/mailFolders/inbox/userConfigurations/MyApp
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('f42c50f8-1300-48a0-93d4-6481acda7efb')/mailFolders('inbox')/userConfigurations/$entity",
  "id": "MyApp",
  "binaryData": "SGVsbG8=",
  "xmlData": "V29ybGQ=",
  "structuredData": [
    {
      "keyEntry": {
        "type": "byte",
        "values": [
          "100"
        ]
      },
      "valueEntry": {
        "type": "boolean",
        "values": [
          "true"
        ]
      }
    },
    {
      "keyEntry": {
        "type": "integer32",
        "values": [
          "-32"
        ]
      },
      "valueEntry": {
        "type": "integer64",
        "values": [
          "64"
        ]
      }
    },
    {
      "keyEntry": {
        "type": "unsignedInteger32",
        "values": [
          "32"
        ]
      },
      "valueEntry": {
        "type": "unsignedInteger64",
        "values": [
          "64"
        ]
      }
    },
    {
      "keyEntry": {
        "type": "string",
        "values": [
          "DateTime"
        ]
      },
      "valueEntry": {
        "type": "dateTime",
        "values": [
          "2025-10-23T01:23:45.0000000+00:00"
        ]
      }
    },
    {
      "keyEntry": {
        "type": "byteArray",
        "values": [
          "AQECAwUI"
        ]
      },
      "valueEntry": {
        "type": "stringArray",
        "values": [
          "Hello",
          "World"
        ]
      }
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get userConfiguration",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: get_userconfiguration/structuredData/member/keyEntry/type:
      Expected type String but actual was Byte. Property: type, actual value: 'byte'",
    "Error: get_userconfiguration/structuredData/member/valueEntry/type:
      Expected type String but actual was Boolean. Property: type, actual value: 'boolean'"
  ]
}
-->
