---
title: "Create userConfiguration"
description: "Create a new userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
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
|id|String|The unique key.|
|structuredData|[structuredDataEntry](../resources/structureddataentry.md) collection|Key-value pairs of supported data types. Optional.|
|xmlData|Binary|Binary data for storing serialized XML. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [userConfiguration](../resources/userconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_userconfiguration_from_",
  "sampleKeys": ["inbox"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/mailFolders/inbox/userConfigurations
Content-Type: application/json

{
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
  "description": "Create userConfiguration",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: createuserconfigurationfrom_/structuredData/member/keyEntry/type:
      Expected type String but actual was Byte. Property: type, actual value: 'byte'",
    "Error: createuserconfigurationfrom_/structuredData/member/valueEntry/type:
      Expected type String but actual was Boolean. Property: type, actual value: 'boolean'"
  ]
}
-->
