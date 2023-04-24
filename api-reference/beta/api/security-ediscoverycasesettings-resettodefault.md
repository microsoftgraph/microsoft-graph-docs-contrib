---
title: "Reset ediscoveryCaseSettings to default"
description: "Reset a ediscoveryCaseSettingsobject to the default values."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# eDiscoveryCaseSettings: resetToDefault

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset a [caseSettings](../resources/security-ediscoverycaseSettings.md) object to the default values.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/settings/resetToDefault
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "settings_resettodefault_value"
}
-->

``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/settings/resettodefault
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/settings-resettodefault-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/settings-resettodefault-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/settings-resettodefault-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/settings-resettodefault-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/settings-resettodefault-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
```
