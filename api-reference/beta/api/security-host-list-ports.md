---
title: "List hostPorts"
description: "Get the list of hostPort resources associated with a host."
author: angelo-moulic
ms.localizationpriority: medium
ms.prod: security
doc_type: apiPageType
---

# List hostPorts

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the list of [hostPort](../resources/security-hostport.md) resources associated with a [host](../resources/security-host.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | ThreatIntelligence.Read.All                 |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | ThreatIntelligence.Read.All                 |

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

| Property                 | Example                            | Notes |
| :----------------------- | :--------------------------------- | :---- |
| mostRecentSslCertificate | `$expand=mostRecentSslCertificate` |       |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hostPort](../resources/security-hostport.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_hostport",
  "sampleKeys": ["8.8.8.8"]
}
-->

```http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/8.8.8.8/ports
```

### Response

The following is an example of the response.

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
