---
title: "List relatedHosts"
description: "Get the list of  resources associated with a host, where that host is either the parent or the child."
author: "vinny2020"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List relatedHosts
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the list of [relatedHosts]() resources associated with a sslCertificate.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_host_list_relatedhosts" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-host-list-relatedhosts-permissions.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET security/threatIntelligence/sslCertificates/${certId}/relatedHosts
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.host](../resources/security-host.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_relatedHost",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/sslCertificates/Yzc3Y2YxMWYyYjY5MGVmZjYx3UJJSPlMDkzODUyYg==/relatedHosts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-relatedhosts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-relatedhosts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-relatedhosts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-relatedhosts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-relatedhosts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-relatedhosts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-relatedhosts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostPair)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

  {
    "@odata.type": "#microsoft.graph.security.iPAddress",
    "id": "107.154.110.154",
    "firstSeenDateTime": null,
    "lastSeenDateTime": null,
    "registrar": null,
    "netblock": null,
    "autonomousSystem": null,
    "hostingProvider": null
  },
  {
    "@odata.type": "#microsoft.graph.security.iPAddress",
    "id": "103.11.13.88",
    "firstSeenDateTime": null,
    "lastSeenDateTime": null,
    "registrar": null,
    "netblock": null,
    "autonomousSystem": null,
    "hostingProvider": null
    }
]
```
