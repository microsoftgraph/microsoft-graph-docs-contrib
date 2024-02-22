---
title: "Get hostPort"
description: "Read the properties and relationships of a hostPort object."
author: "angelo-moulic"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get hostPort

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Read the properties and relationships of a [hostPort](../resources/security-hostport.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_hostport_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-hostport-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/hostPorts/{hostPortId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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

If successful, this method returns a `200 OK` response code and a [hostPort](../resources/security-hostport.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hostport",
  "sampleKeys": ["ODUuMTMuMTM5LjE4JCQyMQ=="]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/hostPorts/ODUuMTMuMTM5LjE4JCQyMQ==
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hostport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-hostport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-hostport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hostport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hostport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-hostport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-hostport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-hostport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.hostPort"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.hostPort",
    "id": "ODUuMTMuMTM5LjE4JCQyMQ==",
    "port": 21,
    "firstSeenDateTime": "2016-17-13T08:43:41.00Z",
    "lastSeenDateTime": "2023-08-09T23:18:21.00Z",
    "lastScanDateTime": "2023-08-09T23:20:33.00Z",
    "timesObserved": 3698,
    "status": "open",
    "protocol": "tcp",
    "banners": [
      {
        "banner": "220 FTP on dd44024.kasserver.com ready\r\n",
        "firstSeenDateTime": "2021-03-08T16:21:28.00Z",
        "lastSeenDateTime": "2023-08-09T23:18:21.00Z",
        "scanProtocol": "telnet",
        "timesObserved": 274
      }
    ],
    "services": [
      {
        "firstSeenDateTime": "2021-05-26T01:05:09.00Z",
        "lastSeenDateTime": "2023-08-09T12:59:13.00Z",
        "isRecent": true,
        "component": {
          "id": "T3BlblNTSCQkOC4ycDEkJFJlbW90ZSBBY2Nlc3MkJDg1LjEzLjEzOS4xOA==",
          "name": "OpenSSH",
          "version": "8.2p1",
          "category": "Remote Access"
        }
      }
    ],
    "mostRecentSslCertificate": {
      "id": "ZDg5ZTNiZDQzZDVkOTA5YjQ3YTE4OTc3YWE5ZDVjZTM2Y2VlMTg0Yw=="
    },
    "host": {
      "id": "85.13.139.18"
    }
  }
}
```
