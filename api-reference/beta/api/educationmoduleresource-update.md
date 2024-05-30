---
title: "Update educationModuleResource"
description: "Update an education module resource."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: apiPageType
---

# Update educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [resource](../resources/educationmoduleresource.md) in a [module](../resources/educationmodule.md). Only teachers can perform this operation.

The only one property that can be updated is **displayName**, for all resource types.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmoduleresource_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationmoduleresource-update-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /education/classes/{class-id}/modules/{module-id}/resources/{resource-id}
```
## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply the new value for the **displayName** field that will be updated.

## Response
If successful, this method returns a `200 OK` response code and an [educationModuleResource](../resources/educationmoduleresource.md) object in the response body.

## Examples
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationmoduleresource_patch"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/0b78e924-9623-49d8-b444-23bfabafa4fe/modules/fa1f6b67-7da6-458d-82fd-0d671df7bc31/resources/2fb5e262-611b-4672-8f55-1236b7f2804a
Content-type: application/json

{
    "resource": {
        "displayName" : "new pdf file patched.pdf"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationmoduleresource-patch-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationmoduleresource-patch-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationmoduleresource-patch-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationmoduleresource-patch-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationmoduleresource-patch-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationmoduleresource-patch-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationmoduleresource-patch-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationmoduleresource-patch-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationExcelResource"
} -->
```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('0b78e924-9623-49d8-b444-23bfabafa4fe')/modules('fa1f6b67-7da6-458d-82fd-0d671df7bc31')/resources/$entity",
    "id": "2fb5e262-611b-4672-8f55-1236b7f2804a",
    "resource": {
        "@odata.type": "#microsoft.graph.educationFileResource",
        "displayName": "new pdf file patched.pdf",
        "createdDateTime": "2023-04-19T20:56:36.6529565Z",
        "lastModifiedDateTime": "2023-04-19T20:56:36.6529598Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!b8MR4rrk6kK793yj5m0azKvekbG46dBGsI2G7Vlzar_XjshebPh4RIbAjeFl67oU/items/01LGT6P7HL7I7CL2W3VNAYPD67G6SBIEB7",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "93f30bbf-7f10-4dbb-a5bd-b59f75d4f690",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "93f30bbf-7f10-4dbb-a5bd-b59f75d4f690",
                "displayName": null
            }
        }
    }
}
```
