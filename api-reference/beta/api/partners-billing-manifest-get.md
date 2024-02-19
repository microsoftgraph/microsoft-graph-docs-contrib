---
title: "Get manifest"
description: "Read the properties and relationships of a manifest object."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# Get manifest

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Read the properties and relationships of a [manifest](../resources/partners-billing-manifest.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "partners_billing_manifest_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/partners-billing-manifest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/partners/billing/manifests/{id}
```

## Optional query parameters

This method doesn't support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.manifest](../resources/partners-billing-manifest.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_manifest"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/manifests/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-manifest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-manifest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-manifest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-manifest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-manifest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-manifest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-manifest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-manifest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.partners.billing.manifest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
  "schemaVersion": "1",
  "dataFormat": "compressedJSON",
  "createdDateTime": "2023-03-09T06:34:34.87Z",
  "eTag": "WYjLro78HdMg6vUWR",
  "partnerTenantId": "0e195b37-4574-4539-bc42-0e539b9684c0",
  "rootDirectory": "https://adlsreconbuprodeastus201.blob.core.windows.net/billedusagefastpath/v1/PartnerTenantId=0e195b37-4574-4539-bc42-0e539b9684c0/BillingMonth=202310/InvoiceId=G031809528/InvoiceVersion=202311/Fragment=basic/PartitionType=default",
  "sasToken": "skoid=0c414a25-fd23-4785-815f-1258467f9ab7&sktid=975f013f-7f24-47e8-a7d3-abc4752bf346&skt=2023-12-13T00%3A37%3A17Z&ske=2023-12-14T00%3A37%3A17Z&sks=b&skv=2021-08-06&sv=2021-08-06&se=2023-12-13T12%3A37%3A17Z&sr=d&sp=rl&sdd=7&sig=RpVY0WBGUHJ2APB3N76jtMak8loAWY4oiA0%2FaoJX1bM%3D",
  "partitionType": "Default",
  "blobCount": 1,
  "blobs": [
    {
      "name": "part-00049-b016029b-a7a7-4c46-9b5e-c925ac317ac6.c000.json.gz",
      "partitionValue": "default"
    }
  ]
}
```
