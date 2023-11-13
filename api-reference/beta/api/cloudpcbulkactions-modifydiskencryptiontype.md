---
title: "cloudPCBulkActions: ModifyDiskEncryptionType"
description: "Bulk modify disk encryption type of a set of Cloud PC devices."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# bulkActions: bulkModifyDiskEncryptionType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform a bulk disk encryption modify action to resize a group of [cloudPCs](../resources/cloudpc.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.|
|Application| Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/bulkActions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|A list of the IDs for the Cloud PC devices that are to be resized.|
|diskEncryptionType|[cloudPcDiskEncryptionType](../resources/cloudpctenantencryptionsetting.md)|Defines the Cloud PC disk encryption type of a tenant.|

## Response

If successful, this method returns a `202 Accepted` response code and the requested diskEncryptionType [cloudPcDiskEncryptionType](../resources/cloudpctenantencryptionsetting.md) in the response body.

## Examples

### Request

Here's an example of a request.

<!-- {
  "blockType": "request",
  "name": "bulkActions"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.CloudPcBulkModifyDiskEncryptionType",
  "cloudPcIds":["*"],
  "diskEncryptionType": "customerManagedKey",
  "displayName":"Change disk encryption type of tenant's CPCs"
}
```

### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPcBulkModifyDiskEncryptionType)",
  "name": "bulkActions"
}
-->

``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.CloudPcBulkModifyDiskEncryptionType",
  "id":"1d164206-bf41-4fd2-8424-a3192d392273",
  "cloudPcIds":["*"],
  "diskEncryptionType": "customerManagedKey",
  "createdDateTime":"2023-08-10T09:27:06.1351438-07:00",
  "displayName":"Change disk encryption type of tenant's CPCs"
}
```
