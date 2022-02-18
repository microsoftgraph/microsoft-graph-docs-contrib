---
title: "Get cloudPcForensicStorageAccount"
description: "Read the properties and relationships of a cloudPcForensicStorageAccount object."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcForensicStorageAccount
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcForensicStorageAccount](../resources/cloudpcsnapshot.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/snapshots/getStorageAccounts
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
{
    "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47"
}

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcForensicStorageAccount](../resources/cloudpcsnapshot.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcforensicstorageaccount"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/getStorageAccounts/0ac520ee-14c0-480f-b6c9-0a90c585ad47
```


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcForensicStorageAccount"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#cloudPcForensicStorageAccounts",
    "value":[
        {
            "storageAccountId": "/subscriptions/{subscription-id}/resourceGroups/res2627/providers/Microsoft.Storage/storageAccounts/sto1125",
            ""storageAccountName":"sto1125"
        },
        {
            "storageAccountId": "/subscriptions/{subscription-id}/resourceGroups/res9407/providers/Microsoft.Storage/storageAccounts/sto8596",
            "storageAccountName":"sto8596"
        }
    ]
}
```

