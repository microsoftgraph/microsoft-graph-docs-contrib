---
title: "List sslCertificates"
description: "Get a list of sslCertificate objects and their properties."
author: "nblankenau"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List sslCertificates

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of [sslCertificate](../resources/security-sslcertificate.md) objects and their properties.

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
GET /security/threatIntelligence/sslCertificates
```

## Optional query parameters

This method also supports the `$count`, `$select`, `$orderBy`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name     | Description                                                                                                                                                                                                                    |
| :------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $count   | `$count` is supported to return a holistic count of the number of [sslCertificate](../resources/security-sslcertificate.md) objects. `$count` is supported as a query parameter (`?$count=true`) or as a path parameter (`/$count`). |
| $orderby | `$orderby` supports some properties of the **sslCertificate** resource. For details, see [Supported properties with $orderby](#supported-properties-with-orderby).                                                                |
| $search  | `$search` is **required** in the request URL of this API. The API currently only supports searching by one field in a call. For details, see [Supported properties with $search](#supported-properties-with-search).           |
| $select  | `$select` is supported to limit the properties returned in this query.                                                                                                                                                         |
| $skip    | `$skip` is supported to skip over elements in pages. Combine with `$top` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                                        |
| $top     | `$top` is supported to limit the number of elements per page. Combine with `$skip` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                              |

### Supported properties with $orderby

The following properties can be used for `$orderby` calls.

| Property             | Example                              | Notes                                           |
| :------------------- | :----------------------------------- | :---------------------------------------------- |
| firstSeenDateTime   | `$orderby=firstSeenDateTime desc`   |                                                 |
| lastSeenDateTime | `$orderby=lastSeenDateTime desc` |                                                 |

### Supported properties with $search

The following properties can be used for `$search` calls.

| Property    | Example                                     | Notes                                                                                                    |
| :---------- | :------------------------------------------ | :--------------------------------------------------------------------------------------------------------|
| fingerprint       | `$search="fingerprint:a3b59e5fe884ee1f34d98eef858e3fb662ac104a"`          | The `fingerprint` value should not contain any colons (:). Removing those will support a search as though they were included. |
| issuer       | `$search="issuer/commonName:Contoso"`          | The `$search` must target a specific field of the [sslCertificateEntity](../resources/security-sslcertificateentity.md). |
| serialNumber       | `$search="serialNumber:abc123"`          | The value used for `$search` will match a `serialNumber` of an [sslCertificate](../resources/security-sslcertificate.md). |
| sha1       | `$search="sha1:abc123"`          | The value used for `$search` will match a `sha1` of an [sslCertificate](../resources/security-sslcertificate.md). |
| subject       | `$search="subject/commonName:Contoso"`          | The `$search` must target a specific field of the [sslCertificateEntity](../resources/security-sslcertificateentity.md). |


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_sslcertificates"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/sslCertificates?$search="subject/commonName:microsoft.com"&$count=true&$top=1
```

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.sslCertificate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "ZmI5NjU1MTUwNWYxZWRiMjRkZDNiMzZmY2ZmZGI3NjU4MzNiODExOA==",
      "firstSeenDateTime": "2023-03-10T01:20:47.000Z",
      "lastSeenDateTime": "2023-04-02T00:00:00.000Z",
      "fingerprint": "fb:96:55:15:05:f1:ed:b2:4d:d3:b3:6f:cf:fd:b7:65:83:3b:81:18",
      "sslVersion": "3",
      "expirationDateTime": "2024-03-03T18:56:17.000Z",
      "issueDateTime": "2023-03-09T18:56:17.000Z",
      "sha1": "fb96551505f1edb24dd3b36fcffdb765833b8118",
      "serialNumber": "1137389559885717770175191329273386705719099773",
      "subject": {
        "commonName": "microsoft.com",
        "address": {
          "city": "Redmond",
          "countryOrRegion": "US",
          "postalCode": null,
          "postOfficeBox": null,
          "state": "WA",
          "street": null
        },
        "email": null,
        "givenName": null,
        "organizationName": "Microsoft Corporation",
        "organizationUnitName": null,
        "serialNumber": null,
        "surname": null,
        "alternateName": [
          "pymes.microsoft.com",
          "mac2.microsoft.com",
          "sponsors.microsoft.com",
          "oemcommunity.microsoft.com",
          "gigjam.microsoft.com",
          "businesscentral.microsoft.com"
        ]
      },
      "issuer": {
        "commonName": "Microsoft Azure TLS Issuing CA 05",
        "address": {
          "city": null,
          "countryOrRegion": "US",
          "postalCode": null,
          "postOfficeBox": null,
          "state": null,
          "street": null
        },
        "email": null,
        "givenName": null,
        "organizationName": "Microsoft Corporation",
        "organizationUnitName": null,
        "serialNumber": null,
        "surname": null,
        "alternateName": []
      }
    }
  ]
}
```
