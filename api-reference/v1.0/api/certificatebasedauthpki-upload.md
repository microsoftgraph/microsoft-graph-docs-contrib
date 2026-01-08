---
title: "certificateBasedAuthPki: upload"
description: "Append additional certificate authority details to a certificateBasedAuthPki resource."
author: "vranganathan"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 06/23/2025
---

# certificateBasedAuthPki: upload

Namespace: microsoft.graph

Append additional certificate authority details to a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) resource. Only one operation can run at a time and this operation can take up to 30 minutes to complete. To know whether another upload is in progress, call the [Get certificateBasedAuthPki](../api/certificatebasedauthpki-get.md). The **status** property will have the value `running`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificatebasedauthpki_upload" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-upload-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/upload
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|uploadUrl|String|The URL where the service can download the PKI file and populate the certificateAuthorities. This can be any http or https publicly accessible internet facing URL.|
|sha256FileHash|String|A sequence of numbers and letters to check that your copy of a downloaded update file is identical to the original. This can be computed using the [Get_FileHash cmdlet](/powershell/module/microsoft.powershell.utility/get-filehash).|


## Response

If successful, this action returns a `204 No Content` response code. If another upload is currently in progress, this API returns a 400 Bad Request error message. Attempting to upload a duplicate certificate results in a 400 Bad Request error code with a Duplicate Certificate exists" error message.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "certificatebasedauthpkithis.upload"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/upload
Content-Type: application/json

{
  "uploadUrl": "https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b",
  "sha256FileHash": "D7F9....61E6F"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/certificatebasedauthpkithisupload-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/certificatebasedauthpkithisupload-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/certificatebasedauthpkithisupload-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/certificatebasedauthpkithisupload-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/certificatebasedauthpkithisupload-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/certificatebasedauthpkithisupload-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/certificatebasedauthpkithisupload-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
