---
title: "List passiveDns"
description: "Get a list of passiveDnsRecord resources associated to a host."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 06/10/2024
---

# List passiveDns

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get a list of [passiveDnsRecord](../resources/security-passivednsrecord.md) resources associated with a [host](../resources/security-host.md).

This method is a forward DNS lookup that queries the IP address of the specified host using its hostname. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_host_list_passivedns" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-host-list-passivedns-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /security/threatIntelligence/hosts/{hostId}/passiveDns
```

## Optional query parameters

This method supports the `$count`, `$select`, `$filter`, `$orderBy`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name     | Description                                                                                                                                                                                                                    |
| :------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $count   | `$count` is supported to return a holistic count of the number of [passiveDnsRecord](../resources/security-passivednsrecord.md) objects. `$count` is supported as a query parameter (`?$count=true`) or as a path parameter (`/$count`). |
| $orderby | `$orderby` supports some properties of the **passiveDns** resource. For details, see [Supported properties with $orderby](#supported-properties-with-orderby).                                                                |
| $filter  | `$filter` is **required** in the request URL of this API. The API currently only supports filtering by one field in a call. For details, see [Supported properties with $filter](#supported-properties-with-filter).           |
| $select  | `$select` is supported to limit the properties returned in this query.                                                                                                                                                         |
| $skip    | `$skip` is supported to skip over elements in pages. Combine with `$top` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                                        |
| $top     | `$top` is supported to limit the number of elements per page. Combine with `$skip` to perform pagination or use the `@odata.nextLink` for server-side pagination.                                                              |


### Supported properties with $filter

The following properties can be used for `$filter` calls:

| Property    | Example                                   
| :---------- | :----------------------------------------- |
| recordType       | `$filter=recordType eq 'A'`          |


### Supported properties with $orderby

The following properties can be used for `$orderby` calls.

| Property             | Example                              
| :------------------- | :-----------------------------------  |
| firstSeenDateTime   | `$orderby=firstSeenDateTime desc`   |
| lastSeenDateTime | `$orderby=lastSeenDateTime desc` |   

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_passivedns_e1",
  "sampleKeys": ["contoso.com"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/hosts/contoso.com/passiveDns
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-passivedns-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-passivedns-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-passivedns-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-passivedns-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-passivedns-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-passivedns-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-passivedns-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.passiveDnsRecord)"
}
-->

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.passiveDnsRecord",
      "id": "Y29udG9zby5jb20kJDIwLjEwMy44NS4zMyQkZmFsc2U=",
      "firstSeenDateTime": "2022-04-18T10:31:12Z",
      "lastSeenDateTime": "2023-03-07T13:19:35Z",
      "collectedDateTime": "2023-03-07T13:59:34.735Z",
      "recordType": "A",
      "parentHost": {
          "id": "contoso.com"
      },
      "artifact": {
          "@odata.type": "#microsoft.graph.security.ipAddress",
          "id": "20.103.85.33"
      }
    }
  ]
}
```
