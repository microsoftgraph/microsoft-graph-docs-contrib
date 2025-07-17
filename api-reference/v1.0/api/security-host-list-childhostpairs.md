---
title: "List childHostPairs"
description: "Get the list of hostPair resources associated with a host, where that host is the parent and has an outgoing pairing to a child."
author: "jakedavies-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List childHostPairs
Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the list of [hostPair](../resources/security-hostpair.md) resources associated with a host, where that host is the *parent* and has an outgoing pairing to a *child*. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_host_list_childhostpairs" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-host-list-childhostpairs-permissions.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/hosts/{hostId}/childHostPairs
```

## Optional query parameters
This method supports `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following properties can be used for `$filter` calls.

|Property|Example|Notes|
|:---|:---|:---|
|All [hostPair](../resources/security-hostpair.md) properties|`$filter=(linkKind eq 'redirect')`|Use the name as it appears in the [hostPair](../resources/security-hostpair.md) resource.|
|childHost/id|`$filter=(childHost/id eq 'contoso.com')`|Full path is requried for `$filter` usage.|
|parentHost/id|`$filter=(parentHost/id in ('contoso.com','downstream.consoso.com'))`|Full path is required for `$filter` usage.|

The following properties can be used for `$orderby` calls.

|Property|Example|
|:---|:---|
|firstSeenDateTime|`$orderby=firstSeenDateTime desc`|
|lastSeenDateTime|`$orderby=lastSeenDateTime asc`|

The following properties can be used for `$select` calls.

|Property|Example|Notes|
|:---|:---|:---|
|All [hostPair](../resources/security-hostpair.md) properties|`$select=id,firstSeenDateTime`|Use the name as it appears in the [hostPair](../resources/security-hostpair.md) resource.|
|parentHost|`$select=parentHost`|Does not support selecting on nested properties (for example `parentHost/id`).|
|childHost|`$select=childHost`|Does not support selecting on nested properties (for example `childHost/id`).|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.hostPair](../resources/security-hostpair.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_childhostpair",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/hosts/contoso.com/childHostPairs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-childhostpair-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-childhostpair-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-childhostpair-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-childhostpair-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-childhostpair-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-childhostpair-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-childhostpair-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-childhostpair-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.hostPair",
      "id": "ZmluYWxSZWRpcmVjdCQkY29udG9zby5jb20kJGNvbnRvc28uY29tJCRjb250b3NvLmNvbQ==",
      "firstSeenDateTime": "2022-05-11T01:27:14.187Z",
      "lastSeenDateTime": "2023-06-23T06:33:31.493Z",
      "linkKind": "finalRedirect",
      "parentHost": {
        "id": "microsoft.com"
      },
      "childHost": {
        "id": "contoso.com"
      }
    }
  ]
}
```
