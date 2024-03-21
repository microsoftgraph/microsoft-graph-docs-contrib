---
title: "List hostPorts"
description: "Get the list of hostPort resources associated with a host."
author: angelo-moulic
ms.localizationpriority: medium
ms.subservice: security
doc_type: apiPageType
---

# List hostPorts

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the list of [hostPort](../resources/security-hostport.md) resources associated with a [host](../resources/security-host.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_host_list_ports" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-host-list-ports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/hosts/{hostId}/ports
```

## Optional query parameters

This method supports the `$count`, `$skip`, `$top`, `$select`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following properties can be used for `$select` calls.

| Property                                                     | Example                            | Notes                                                                                      |
| :----------------------------------------------------------- | :--------------------------------- | :----------------------------------------------------------------------------------------- |
| All [hostPort](../resources/security-hostport.md) properties | `$select=id,firstSeenDateTime`     | Use the name as it appears in the [hostPort](../resources/security-hostport.md) resource.  |
| mostRecentSslCertificate                                     | `$select=mostRecentSslCertificate` | You can't use `$select` on nested properties (for example, `mostRecentSslCertificate/id`). |
| host                                                         | `$select=host`                     | You can't use `$select` on nested properties (for example, `host/id`).                     |

The following properties can be used for `$expand` calls.

| Property                 | Example                            |
| :----------------------- | :--------------------------------- |
| mostRecentSslCertificate | `$expand=mostRecentSslCertificate` |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hostPort](../resources/security-hostport.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_hostport",
  "sampleKeys": ["8.8.8.8"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/8.8.8.8/ports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-hostport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-hostport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-hostport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-hostport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-hostport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-hostport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-hostport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostPort)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "tKhoxnUMGirrHqYiMpsdaQRDZKBnXrao",
      "port": 443,
      "firstSeenDateTime": "2016-12-06T20:23:38.00Z",
      "lastSeenDateTime": "2023-07-18T23:24:01.00Z",
      "lastScanDateTime": "2023-07-18T23:24:29.00Z",
      "timesObserved": 15590,
      "status": "open",
      "protocol": "tcp",
      "banners": [
        {
          "banner": "HTTP/1.1 302 Found\r\nX-Content-Type-Options:...",
          "firstSeenDateTime": "2023-06-21T00:49:23.00Z",
          "lastSeenDateTime": "2023-07-18T15:31:57.00Z",
          "scanProtocol": "http_raw",
          "timesObserved": 2
        },
        {
          "banner": "HTTP/1.1 302 Found\r\nX-Content-Type-Options:...",
          "firstSeenDateTime": "2021-03-12T15:38:42.00Z",
          "lastSeenDateTime": "2023-07-18T15:22:16.00Z",
          "scanProtocol": "http_raw",
          "timesObserved": 2975
        }
      ],
      "services": [
        {
          "firstSeenDateTime": "2020-10-28T22:39:51.00Z",
          "lastSeenDateTime": "2023-07-18T22:13:54.00Z",
          "isRecent": true,
          "component": {
            "id": "EVfwHhqkUQESmqrKSFHobDUHDAKBsWLf",
            "name": "scaffolding on HTTPServer2",
            "version": "",
            "category": "Server"
          }
        },
        {
          "firstSeenDateTime": "2022-06-26T04:29:25.00Z",
          "lastSeenDateTime": "2023-07-18T00:54:13.00Z",
          "isRecent": false,
          "component": {
            "id": "ZobhjJgOwebxpsXdCUjfTpshygqgcfJj",
            "name": "nginx",
            "version": "1.18.0",
            "category": "Server"
          }
        }
      ],
      "mostRecentSslCertificate": {
        "id": "ZmI5NjU1MTUwNWYxZWRiMjRkZDNiMzZmY2ZmZGI3NjU4MzNiODExOA=="
      },
      "host": {
        "id": "85.13.139.18"
      }
    }
  ]
}
```
