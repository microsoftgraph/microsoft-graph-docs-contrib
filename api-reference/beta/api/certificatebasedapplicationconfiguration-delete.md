---
title: "Delete certificateBasedApplicationConfiguration"
description: "Delete the properties and relationships of a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete certificateBasedApplicationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the properties and relationships of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|

[!INCLUDE [app-cert-config-apis](../includes/rbac-for-apis/app-cert-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_certificatebasedapplicationconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/directory/certificateAuthorities//certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-certificatebasedapplicationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-certificatebasedapplicationconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-certificatebasedapplicationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-certificatebasedapplicationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-certificatebasedapplicationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-certificatebasedapplicationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-certificatebasedapplicationconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-certificatebasedapplicationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
