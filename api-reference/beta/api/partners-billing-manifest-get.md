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

Read the properties and relationships of a [manifest](../resources/partners-billing-manifest.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/partners/billing/manifests/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.manifest](../resources/partners-billing-manifest.md) object in the response body.

## Examples

### Request

The following request shows an example.
<!-- {
  "blockType": "request",
  "name": "get_manifest"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/manifests/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```

### Response

The following request shows the response.

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
