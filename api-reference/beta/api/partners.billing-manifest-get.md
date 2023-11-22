---
title: "Get manifest"
description: "Read the properties and relationships of a microsoft.graph.partners.billing.manifest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get manifest
Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.partners.billing.manifest](../resources/partners.billing-manifest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partners-permissions"
}
-->
[!INCLUDE [permissions-table](permissions/partners-permissions.md)]

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
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.partners.billing.manifest](../resources/partners.billing-manifest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_manifest"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/partners/billing/manifests/6fe687d7-1e0f-4bd6-9091-4672691f64bc
```


### Response
The following is an example of the response
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
   "rootDirectory": "https://adlsreconbuprodeastus201.blob.core.windows.net/{directory_path}",
   "sasToken": "{SAS}",
   "partitionType": "Default",
   "blobCount": 1,
   "blobs": [
       {
         "name": "part-00049-b016029b-a7a7-4c46-9b5e-c925ac317ac6.c000.json.gz",
         "partitionValue": "default",
       }
   ]
 }

```

