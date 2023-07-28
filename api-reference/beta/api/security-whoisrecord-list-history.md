---
title: "List whoisHistoryRecords"
description: "List the history for a whoisRecord as whoisHistoryRecord objects."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get whoisRecord

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

List the collection of [microsoft.graph.security.whoisHistoryRecord](../resources/security-whoishistoryrecord.md) objects for a [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) , including the the properties and relationships of each [microsoft.graph.security.whoisHistoryRecord](../resources/security-whoishistoryrecord.md) object.

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
``` http
GET /security/threatIntelligence/hosts/{hostId}/whois/history
GET /security/threatIntelligence/whoisRecord/{id}/history
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

### $count

`$count` is supported to return a wholistic count of the number of [whoisHistoryRecord](../resources/security-whoishistoryrecord.md) objects. This is supported as a query parameter (`?$count=true`) or as a path parameter (`/$count`).

### $select

`$select` is supported to limit the properties returned in this query.

### $skip

`$skip` is supported to skip over elements in pages. Combine with `$top` to perform pagination (or leverage the `@odata.nextLink` for server-side pagination).

### $top

`$top` is supported to limit the number of elements per page. Combine with `$skip` to perform pagination (or leverage the `@odata.nextLink` for server-side pagination).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [whoisHistoryRecord](../resources/security-whoishistoryrecord.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_whoishistoryrecord",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/contoso.com/whois/history
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.whoisHistoryRecord)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.whoisHistoryRecord",
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
          "telephone": "+1.2086851750",
          "fax": null,
          "address": {
              "city": null,
              "countryOrRegion": null,
              "postalCode": null,
              "state": null,
              "street": null,
              "type": "unknown"
          }
      },
      "admin": {
          "email": "domains@microsoft.com",
          "name": "Domain Administrator",
          "organization": "Microsoft Corporation",
          "telephone": "+1.4258828080",
          "fax": "+1.4259367329",
          "address": {
              "city": "Redmond",
              "countryOrRegion": "US",
              "postalCode": "98052",
              "state": "WA",
              "street": "One Microsoft Way",
              "type": "unknown"
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
              "street": "3540 E Longwing Ln",
              "type": "unknown"
          }
      },
      "registrant": {
          "email": "domains@microsoft.com",
          "name": "Domain Administrator",
          "organization": "Microsoft Corporation",
          "telephone": "+1.4258828080",
          "fax": "+1.4259367329",
          "address": {
              "city": "Redmond",
              "countryOrRegion": "US",
              "postalCode": "98052",
              "state": "WA",
              "street": "One Microsoft Way",
              "type": "unknown"
          }
      },
      "technical": {
          "email": "msnhst@microsoft.com",
          "name": "MSN Hostmaster",
          "organization": "Microsoft Corporation",
          "telephone": "+1.4258828080",
          "fax": "+1.4259367329",
          "address": {
              "city": "Redmond",
              "countryOrRegion": "US",
              "postalCode": "98052",
              "state": "WA",
              "street": "One Microsoft Way",
              "type": "unknown"
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
          "id": "contoso.com"
      }
    }
  ]
}
```

