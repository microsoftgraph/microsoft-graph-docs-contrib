---
title: "Create filePlanReferenceTemplate"
description: "Create a new filePlanReferenceTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create filePlanReferenceTemplate
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_post_fileplanreferences" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-post-fileplanreferences-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/filePlanReferences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.

You can specify the following properties when creating a **filePlanReferenceTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a file plan reference name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md).|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_fileplanreferencetemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/labels/filePlanReferences
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-fileplanreferencetemplate-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-fileplanreferencetemplate-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-fileplanreferencetemplate-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-fileplanreferencetemplate-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-fileplanreferencetemplate-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-fileplanreferencetemplate-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-fileplanreferencetemplate-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-fileplanreferencetemplate-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.filePlanReferenceTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "id": "b1f7b518-a44f-1d4b-c6f1-ab8771d3907c",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

