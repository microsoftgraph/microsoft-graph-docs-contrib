---
title: "List whoisRecords"
description: "Get a list of whoisRecord objects."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List whoisRecords

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of [whoisRecord](../resources/security-whoisrecord.md) objects.

> **Note:** You must include the `$search` query parameter in the request URL for this API.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_threatintelligence_list_whoisrecords" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-threatintelligence-list-whoisrecords-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/whoisRecords?$search="{value}"
```

## Optional query parameters

This method supports the `$count`, `$orderby`, `$search`, `$select`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name     | Description                                                                                                                                                                                                                    |
| :------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $count   | `$count` is supported to return a holistic count of the number of [whoisRecord](../resources/security-whoisrecord.md) objects. `$count` is supported as a query parameter (`?$count=true`) or as a path parameter (`/$count`). |
| $orderby | `$orderby` supports some properties of the **whoisRecord** resource. For details, see [Supported properties with $orderby](#supported-properties-with-orderby).                                                                |
| $search  | `$search` is **required** in the request URL of this API. The API currently only supports searching by one field in a call. For details, see [Supported properties with $search](#supported-properties-with-search).           |
| $select  | `$select` is supported to limit the properties returned in this query.                                                                                                                                                         |
| $skip    | `$skip` is supported to skip over elements in pages. Combine with `$top` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                                        |
| $top     | `$top` is supported to limit the number of elements per page. Combine with `$skip` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                              |

### Supported properties with $orderby

The following properties can be used for `$orderby` calls.

| Property             | Example                              | Notes                                           |
| :------------------- | :----------------------------------- | :---------------------------------------------- |
| expirationDateTime   | `$orderby=expirationDateTime desc`   |                                                 |
| host/id              | `$orderby=host/id asc`               | The full path is required for `$orderby` usage. |
| registrationDateTime | `$orderby=registrationDateTime desc` |                                                 |

### Supported properties with $search

The following properties can be used for `$search` calls.

| Property    | Example                                     | Notes                                                                                                    |
| :---------- | :------------------------------------------ | :--------------------------------------------------------------------------------------------------------|
| abuse       | `$search="abuse/address/state:WA"`          | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| admin       | `$search="admin/address/state:WA"`          | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| billing     | `$search="billing/address/state:WA"`        | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| nameservers | `$search="nameservers/host/id:contoso.com"` | The `$search` must search against as specific host ID.                                                   |
| noc         | `$search="noc/address/state:WA"`            | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| registrant  | `$search="registrant/address/state:WA"`     | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| registrar   | `$search="registrar/address/state:WA"`      | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| technical   | `$search="technical/address/state:WA"`      | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |
| zone        | `$search="zone/address/state:WA"`           | The `$search` must target a specific field of the [whoisContact](../resources/security-whoiscontact.md). |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_whoisrecord"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/whoisRecords?$search="admin/address/state:WA&$orderby=registrationDateTime desc"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-whoisrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-whoisrecord-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-whoisrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-whoisrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-whoisrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-whoisrecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-whoisrecord-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.whoisRecord)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
      "rawWhoisText": "Registrar: \n  Handle: 1891582_DOMAIN_COM-VRSN\n  LDH Name: contoso.com\n  Nameserver: \n    LDH Name: ns1.contoso.com\n    Event: \n      Action: last changed\n...",
      "abuse": {
        "email": "noreply@contoso.com",
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
        "email": "noreply@contoso.com",
        "name": "Domain Administrator",
        "organization": "Contoso Org",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
          "city": "Redmond",
          "countryOrRegion": "US",
          "postalCode": "98052",
          "state": "WA",
          "street": "123 Fake St."
        }
      },
      "registrar": {
        "email": null,
        "name": null,
        "organization": "MarkMonitor Inc.",
        "telephone": null,
        "fax": null,
        "address": null
      },
      "registrant": {
        "email": "noreply@contoso.com",
        "name": "Domain Administrator",
        "organization": "Contoso Corporation",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
          "city": "Redmond",
          "countryOrRegion": "US",
          "postalCode": "98052",
          "state": "WA",
          "street": "123 Fake St."
        }
      },
      "technical": {
        "email": "noreply@contoso.com",
        "name": "Hostmaster",
        "organization": "Contoso Corporation",
        "telephone": "+1.5555555555",
        "fax": "+1.5555555555",
        "address": {
          "city": "Redmond",
          "countryOrRegion": "US",
          "postalCode": "98052",
          "state": "WA",
          "street": "123 Fake St."
        }
      },
      "nameservers": [
        {
          "firstSeenDateTime": null,
          "lastSeenDateTime": null,
          "host": {
            "id": "ns1.contoso-dns.com"
          }
        },
        {
          "firstSeenDateTime": null,
          "lastSeenDateTime": null,
          "host": {
            "id": "ns2.contoso-dns.com"
          }
        },
        {
          "firstSeenDateTime": null,
          "lastSeenDateTime": null,
          "host": {
            "id": "ns3.contoso-dns.com"
          }
        },
        {
          "firstSeenDateTime": null,
          "lastSeenDateTime": null,
          "host": {
            "id": "ns4.contoso-dns.com"
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
