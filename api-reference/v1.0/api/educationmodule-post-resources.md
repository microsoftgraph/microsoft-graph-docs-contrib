---
title: "Create educationModuleResource"
description: "Create an education module resource."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: apiPageType
---

# Create educationModuleResource

Namespace: microsoft.graph

Create a [resource](../resources/educationmoduleresource.md) in a [module](../resources/educationmodule.md). Only teachers can perform this operation.

You can create the following types of module resources:

- [educationChannelResource](../resources/educationchannelresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationLinkedAssignmentResource](../resources/educationlinkedassignmentresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationWordResource](../resources/educationwordresource.md)

Every resource has an **@odata.type** property to indicate which type of resource is being created.

> [!IMPORTANT]
> To upload a module resource, you need to first [set up the resources folder](../api/educationmodule-setupresourcesfolder.md) for the [educationModule](../resources/educationmodule.md) where the files will be uploaded.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_post_resources" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmodule-post-resources-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/classes/{class-id}/modules/{module-id}/resources
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json          |

## Request body

In the request body, supply a JSON representation of one of the following resource types:

- [educationChannelResource](../resources/educationchannelresource.md)
- [educationExcelResource](../resources/educationexcelresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationLinkedAssignmentResource](../resources/educationlinkedassignmentresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationWordResource](../resources/educationwordresource.md)

> **Note:** You can't use this operation to create an [educationExternalResource](../resources/educationexternalresource.md).

## Response

If successful, this method returns a `201 Created` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples

## Example 1: Create an educationLinkResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationlinkresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
         "@odata.type": "#microsoft.graph.educationLinkResource",
         "displayName":"Bing site",
         "link": "https://www.bing.com"
     }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationlinkresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationlinkresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationlinkresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationlinkresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationlinkresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationlinkresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationlinkresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationlinkresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('24eda3bf-32e5-4c70-a14d-831e606a2e4f')/resources/$entity",
    "id": "b8dc1d8e-7606-467f-a1e4-c9f1a864d208",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkResource",
        "displayName": "Bing site",
        "createdDateTime": "2024-01-17T17:51:45.1612454Z",
        "lastModifiedDateTime": "2024-01-17T17:51:45.1612463Z",
        "link": "https://www.bing.com",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 2: Create an educationWordResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationwordresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/97acf4f0-d62f-4b98-8827-6ac805fb6949/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Word_file.docx",
        "file": {
            "odataid": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3XYXSBRKMQM5GISQGPVO6BNO27"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationwordresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationwordresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationwordresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationwordresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationwordresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationwordresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationwordresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationwordresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('97acf4f0-d62f-4b98-8827-6ac805fb6949')/resources/$entity",
    "id": "2d8a475d-918e-4992-b8fe-97ab613c1c49",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Word_file.docx",
        "createdDateTime": "2024-01-18T17:05:34.3789404Z",
        "lastModifiedDateTime": "2024-01-18T17:05:34.378942Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3XYXSBRKMQM5GISQGPVO6BNO27",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 3: Create an educationFileResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationfileresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/1babf0b0-c885-4f9d-b008-5b0de0cb835d/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "csv_file.csv",
        "file": {
            "odataid": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7A2QVVORGJNVBIC4LLM3XQ6UTS"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationfileresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationfileresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationfileresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationfileresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationfileresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationfileresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationfileresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationfileresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationFileResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('1babf0b0-c885-4f9d-b008-5b0de0cb835d')/resources/$entity",
    "id": "a6f82f08-3819-435b-b5ac-e286dfe14f9f",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "csv_file.csv",
        "createdDateTime": "2024-01-18T18:02:05.3312223Z",
        "lastModifiedDateTime": "2024-01-18T18:02:05.3312242Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7A2QVVORGJNVBIC4LLM3XQ6UTS",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 4: Create an educationExcelResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationexcelresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/6a8242df-f2b6-4fdb-9b80-66b847ef8e75/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_excel_file.xlsx",
        "file": {
            "odataid": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5DL55LC4M35VEZWBZFJCX5V4QO"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationexcelresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationexcelresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationexcelresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationexcelresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationexcelresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationexcelresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationexcelresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationexcelresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('6a8242df-f2b6-4fdb-9b80-66b847ef8e75')/resources/$entity",
    "id": "eaac58ad-a085-4696-82b4-2a5669da4ef0",
    "resource": {
        "@odata.type": "#microsoft.graph.educationExcelResource",
        "displayName": "test_excel_file.xlsx",
        "createdDateTime": "2024-01-18T17:11:21.3773789Z",
        "lastModifiedDateTime": "2024-01-18T17:11:21.3773812Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5DL55LC4M35VEZWBZFJCX5V4QO",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 5: Create an educationPowerPointResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationpowerpointresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/c75c2706-f352-47b4-a11e-f1292305c1d1/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "ppt_file.pptx",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ2GE3EYXUX6NJEI6UWOKBM74MHA"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationpowerpointresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationpowerpointresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationpowerpointresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationpowerpointresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationpowerpointresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationpowerpointresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationpowerpointresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationpowerpointresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationPowerPointResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('c75c2706-f352-47b4-a11e-f1292305c1d1')/resources/$entity",
    "id": "2596ad63-56f4-4a05-bf3e-8918dca4aaa4",
    "resource": {
        "@odata.type": "#microsoft.graph.educationPowerPointResource",
        "displayName": "ppt_file.pptx",
        "createdDateTime": "2024-01-18T17:15:38.6453797Z",
        "lastModifiedDateTime": "2024-01-18T17:15:38.6453821Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ2GE3EYXUX6NJEI6UWOKBM74MHA",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 6: Create an educationMediaResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationmediaresource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "ModulePicture.PNG",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ56XC3M4V7F5JEK3NLECZH4HWGP"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationmediaresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationmediaresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationmediaresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationmediaresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationmediaresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationmediaresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationmediaresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationmediaresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationMediaResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('0655c191-0252-4077-b446-8882e8817831')/resources/$entity",
    "id": "ebe34956-9beb-460a-be13-eae70ac0fe29",
    "resource": {
        "@odata.type": "#microsoft.graph.educationMediaResource",
        "displayName": "ModulePicture.PNG",
        "createdDateTime": "2024-01-18T17:19:38.0361989Z",
        "lastModifiedDateTime": "2024-01-18T17:19:38.0361999Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ56XC3M4V7F5JEK3NLECZH4HWGP",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 7: Create an educationChannelResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationChannelResource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/fe180ab6-4070-40e7-9e9c-eda234fe126a/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationChannelResource",
        "url": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2",
        "displayName": "General"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationchannelresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationchannelresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationchannelresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationchannelresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationchannelresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationchannelresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationchannelresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationchannelresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationChannelResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('fe180ab6-4070-40e7-9e9c-eda234fe126a')/resources/$entity",
    "id": "00fb5e7d-6d2e-4d7d-9deb-cd9d8be4af41",
    "resource": {
        "@odata.type": "#microsoft.graph.educationChannelResource",
        "displayName": "General",
        "createdDateTime": "2024-01-18T17:52:10.3067568Z",
        "lastModifiedDateTime": "2024-01-18T17:52:10.3067579Z",
        "url": "https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```

## Example 8: Create an educationLinkedAssignmentResource

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationLinkedAssignmentResource_from_educationmodule"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/1babf0b0-c885-4f9d-b008-5b0de0cb835d/resources
Content-type: application/json

{
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
        "displayName": "2024-01-19T17_54_38_711Z",
        "url": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b6a1d277-fed7-4345-940e-3f2ce13eb737"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationlinkedassignmentresource-from-educationmodule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationlinkedassignmentresource-from-educationmodule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationlinkedassignmentresource-from-educationmodule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationlinkedassignmentresource-from-educationmodule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationlinkedassignmentresource-from-educationmodule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationlinkedassignmentresource-from-educationmodule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationlinkedassignmentresource-from-educationmodule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationlinkedassignmentresource-from-educationmodule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationLinkedAssignmentResource"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('1babf0b0-c885-4f9d-b008-5b0de0cb835d')/resources/$entity",
    "id": "de9018cb-6445-40bf-a425-3f150e059dd6",
    "resource": {
        "@odata.type": "#microsoft.graph.educationLinkedAssignmentResource",
        "displayName": "2024-01-19T17_54_38_711Z",
        "createdDateTime": "2024-01-18T17:56:19.8568259Z",
        "lastModifiedDateTime": "2024-01-18T17:56:19.856827Z",
        "url": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b6a1d277-fed7-4345-940e-3f2ce13eb737/",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                "displayName": null
            }
        }
    }
}
```
