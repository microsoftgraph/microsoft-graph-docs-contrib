---
title: "cloudPC: validateBulkResize"
description: "Validate selected devices to see if their states meet the requirements to perform Bulk Resize."
author: "Aria Zhang (yuzhang3)"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: validateBulkResize

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate selected a bulk of [cloudPC](../resources/cloudpc.md) to see if their states meet the requirements to perform Bulk Resize.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To validate a set of [cloudPC](../resources/cloudpc.md) to see if they can be bulk resized in the organization using delegated permission:

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/validateBulkResize
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
|cloudPcIds|String collection|The identifier id of a set of Cloud PC.|
|targetServicePlanId|String|The identifier id of targeted resized service plan.|

## Response

If successful, this method returns a `200 OK` response code and the requested [cloudPcResizeValidateResult](../resources/cloudPcResizeValidationResult.md) object collection in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc-validatebulkresize"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/validateBulkResize
Content-Type: application/json
Content-length: 163

{
  "cloudPcIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0", 
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ],
  "targetServicePlanId": "662009bc-7732-4f6f-8726-25883518b33e"
}
```
---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPcResizeValidationResult)",
  "name": "cloudpc.validateBulkResize"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcResizeValidationResult) ",
   "value":[
      {
         "cloudPcId":"30d0e128-de93-41dc-89ec-33d84bb662a0",
         "validationResult":"success"
      },
      {
         "cloudPcId":"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
         "validationResult":"operationNotSupported"
      }
   ]
}
```
