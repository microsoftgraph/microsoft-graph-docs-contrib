---
title: "List sslCertificates"
description: "Get a list of sslCertificate objects and their properties."
author: "nblankenau"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List sslCertificates

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of [sslCertificate](../resources/security-sslcertificate.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_threatintelligence_list_sslcertificates" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-threatintelligence-list-sslcertificates-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/sslCertificates?$search="{property_name}:{property_value}"
```

## Optional query parameters

This method supports the `$count`, `$orderby`, `$select`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name     | Description                                                                                                                                                                                                                    |
| :------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $count   | Returns a holistic count of the number of [sslCertificate](../resources/security-sslcertificate.md) objects. You can specify `$count` as a query parameter (`?$count=true`) or as a path parameter (`/$count`). |
| $orderby | Supports some properties of the **sslCertificate** resource, as listed in [Properties that support $orderby](#properties-that-support-orderby).                                                                |
| $search  | **Required** parameter. Currently supports searching by only one property in a call. <br> Do not include any colon (':') in the search string; simply remove any colon from the property value in the search string, if it exists. <br> For more information, see [Properties that support $search](#properties-that-support-search).           |
| $select  | Limits the properties returned in this query.                                                                                                                                                         |
| $skip    | Skips over elements in pages. You can combine with `$top` to perform pagination or use the URL returned in `@odata.nextLink` for server-side pagination.                                                                        |
| $top     | Limits the number of elements per page. You can combine with `$skip` to perform pagination or use the URL returned in `@odata.nextLink` for server-side pagination.                                                              |

### Properties that support $orderby

Use any of the following properties with the `$orderby` query parameter.

| Property             | Example                              | 
| :------------------- | :----------------------------------- |
| firstSeenDateTime   | `$orderby=firstSeenDateTime desc`   |
| lastSeenDateTime | `$orderby=lastSeenDateTime desc` |

### Properties that support $search

Use any of the following properties with the `$search` query parameter.

| Property    | Example                                     | Notes                                                                                                    |
| :---------- | :------------------------------------------ | :--------------------------------------------------------------------------------------------------------|
| fingerprint       | `$search="fingerprint:a3b59e5fe884ee1f34d98eef858e3fb662ac104a"`          | **fingerprint** property values may contain a colon (':'). In general, do not include any colon (:) in a search string. Simply remove it from the property value in the search string, if it exists. |
| issuer       | `$search="issuer/commonName:Contoso"`          | Specify in the search string a specific property of the [sslCertificateEntity](../resources/security-sslcertificateentity.md) type. |
| serialNumber       | `$search="serialNumber:abc123"`          | Returns [sslCertificate](../resources/security-sslcertificate.md) resources with the **serialNumber** property matching the property value in the search string. |
| sha1       | `$search="sha1:abc123"`          | Returns [sslCertificate](../resources/security-sslcertificate.md) resources with the **sha1** property matching the property value in the search string.|
| subject       | `$search="subject/commonName:Contoso"`          | Specify in the search string a specific property of the [sslCertificateEntity](../resources/security-sslcertificateentity.md) type. |


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sslcertificates"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/sslCertificates?$search="subject/commonName:microsoft.com"&$count=true&$top=1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-sslcertificates-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-sslcertificates-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-sslcertificates-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-sslcertificates-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-sslcertificates-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-sslcertificates-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-sslcertificates-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-sslcertificates-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
