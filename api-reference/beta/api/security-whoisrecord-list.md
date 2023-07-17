---
title: "List whoisRecords"
description: "Get a list of whoisRecord objects."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List whoisRecords

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

List a collection of [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) objects.

> **Note:** This List API does require the usage of `$search`

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
GET /security/threatIntelligence/whoisRecords
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

### $search

`$search` is **required** when calling the `whoisRecords` List API. The API currently only supports searching by one field in a call.The following properties can be used for searching:

| Property         | Example                                   | Notes                                                                                                    |
| :------------ | :---------------------------------------- | :------------------------------------------------------------------------------------------------------- |
| `abuse`       | `$search=abuse/address/state:WA`          | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `admin`       | `$search=admin/address/state:WA`          | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `billing`     | `$search=billing/address/state:WA`        | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `nameservers` | `$search=nameservers/host/id:contoso.com` | The `$search` must search against as specific host id.                                                   |
| `noc`         | `$search=noc/address/state:WA`            | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `registrant`  | `$search=registrant/address/state:WA`     | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `registrar`   | `$search=registrar/address/state:WA`      | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `technical`   | `$search=technical/address/state:WA`      | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| `zone`        | `$search=zone/address/state:WA`           | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |

### $orderby

`$orderby` is an optional query parameter. The following properties can be used for `$orderby` calls.

| Property         | Example                                   | Notes                                                                                                    |
| :------------ | :---------------------------------------- | :------------------------------------------------------------------------------------------------------- |
| `expirationDateTime` | `$orderby=expirationDateTime desc` ||
| `host/id` | `$orderby=host/id asc` | The full path is required for `$orderby` usage.|
| `registrationDateTime` | `$orderby=registrationDateTime desc`| |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_whoisrecord"
}
-->

```http
GET https://graph.microsoft.com/beta/security/threatIntelligence/whoisRecords?$search=admin/address/state:WA
```

### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.whoisRecord"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.whoisRecord",
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
            "@odata.type": "#microsoft.graph.security.hostname",
            "id": "ns1-205.azure-dns.com"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "@odata.type": "#microsoft.graph.security.hostname",
            "id": "ns2-205.azure-dns.net"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "@odata.type": "#microsoft.graph.security.hostname",
            "id": "ns3-205.azure-dns.org"
        }
      },
      {
        "firstSeenDateTime": null,
        "lastSeenDateTime": null,
        "host": {
            "@odata.type": "#microsoft.graph.security.hostname",
            "id": "ns4-205.azure-dns.info"
        }
      }
    ],
    "host": {
        "@odata.type": "#microsoft.graph.security.hostname",
        "id": "contoso.com"
    }
  }
}
```
