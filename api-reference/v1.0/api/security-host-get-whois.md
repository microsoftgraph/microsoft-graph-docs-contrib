---
title: "Get whoisRecord for a host"
description: "Get the current whoisRecord resource for a host."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get whoisRecord

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the current [whoisRecord](../resources/security-whoisrecord.md) resource for a [host](../resources/security-host.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ThreatIntelligence.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/hosts/{hostId}/whois
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_host_whois",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/hosts/contoso.com/whois
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-host-whois-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-host-whois-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-host-whois-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-host-whois-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-host-whois-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-host-whois-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-host-whois-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.whoisRecord"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.security.whoisRecord",
    "id": "Y29udG9zby5jb20kJDY5NjQ3ODEyMDc3NDY1NzI0MzM=",
    "expirationDateTime": "2023-08-31T00:00:00Z",
    "registrationDateTime": "2022-07-30T09:43:19Z",
    "firstSeenDateTime": null,
    "lastSeenDateTime": null,
    "lastUpdateDateTime": "2023-06-24T08:34:15.984Z",
    "billing": null,
    "noc": null,
    "zone": null,
    "whoisServer": "rdap.markmonitor.com",
    "domainStatus": "client update prohibited,client transfer prohibited,client delete prohibited",
    "rawWhoisText": "Registrar: \n  Handle: 1891582_DOMAIN_COM-VRSN\n  LDH Name: contoso.com\n  Nameserver: \n    LDH Name: ns1-205.azure-dns.com\n    Event: \n      Action: last changed\n...",
    "abuse": {
        "email": "abusecomplaints@markmonitor.com",
        "name": null,
        "organization": null,
        "telephone": "+1.5555555555",
        "fax": null,
        "address": {
            "city": null,
            "countryOrRegion": null,
            "postalCode": null,
            "state": null,
            "street": null
        }
    },
    "admin": {
        "email": "domains@microsoft.com",
        "name": "Domain Administrator",
        "organization": "Microsoft Corporation",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
            "city": "Redmond",
            "countryOrRegion": "US",
            "postalCode": "98052",
            "state": "WA",
            "street": "One Microsoft Way"
        }
    },
    "registrar": {
        "email": null,
        "name": null,
        "organization": "MarkMonitor Inc.",
        "telephone": null,
        "fax": null,
        "address": {
            "city": "Meridian",
            "countryOrRegion": "US",
            "postalCode": "83646",
            "state": "ID",
            "street": "3540 E Longwing Ln"
        }
    },
    "registrant": {
        "email": "domains@microsoft.com",
        "name": "Domain Administrator",
        "organization": "Microsoft Corporation",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
            "city": "Redmond",
            "countryOrRegion": "US",
            "postalCode": "98052",
            "state": "WA",
            "street": "One Microsoft Way"
        }
    },
    "technical": {
        "email": "msnhst@microsoft.com",
        "name": "MSN Hostmaster",
        "organization": "Microsoft Corporation",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
            "city": "Redmond",
            "countryOrRegion": "US",
            "postalCode": "98052",
            "state": "WA",
            "street": "One Microsoft Way"
        }
    },
    "nameservers": [
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "id": "ns1-205.azure-dns.com"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "id": "ns2-205.azure-dns.net"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "id": "ns3-205.azure-dns.org"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "id": "ns4-205.azure-dns.info"
        }
      }
  ],
    "host": {
        "@odata.type": "#microsoft.graph.security.host",
        "id": "contoso.com"
    }
}
```
