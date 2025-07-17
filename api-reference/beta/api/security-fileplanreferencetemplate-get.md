---
title: "Get filePlanReferenceTemplate"
description: "Read the properties and relationships of a filePlanReferenceTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Get filePlanReferenceTemplate
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_fileplanreferencetemplate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-fileplanreferencetemplate-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/filePlanReferences/{filePlanReferenceTemplateId}
GET /security/labels/retentionLabels/{retentionLabelId}/descriptors/filePlanReferenceTemplate
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_fileplanreferencetemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/labels/filePlanReferences/b1f7b518-a44f-1d4b-c6f1-ab8771d3907c
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-fileplanreferencetemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-fileplanreferencetemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-fileplanreferencetemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-fileplanreferencetemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-fileplanreferencetemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-fileplanreferencetemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-fileplanreferencetemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-fileplanreferencetemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.filePlanReferenceTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
    "id": "b1f7b518-a44f-1d4b-c6f1-ab8771d3907c",
    "displayName": "FIN 01-02-001",
    "createdBy": {
    "user": {
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
      "displayName": "Admin"
    }
  },
  "createdDateTime" : "2021-03-24T02:09:08Z"
}
}
```

