---
title: "List cloudPCs"
description: "Get the cloudPC resources from the cloudPCs navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List cloudPCs

Namespace: microsoft.graph

Get the cloudPC resources from the cloudPCs navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All, CloudPC.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPC](../resources/cloudpc.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_cloudpc"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPC)"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPC",
      "id": "662009bc-7732-4f6f-8726-25883518b33e",
      "displayName": "Demo-0",
      "imageDisplayName": "Windows-10 19h1-evd",
      "managedDeviceId": "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
      "managedDeviceName": " A00002GI001",
      "provisioningPolicyId": "7ed725ad-0a00-4117-b557-d965c3732450",
      "servicePlanId": "dbb9148c-ff83-4a4c-8d7f-28752e93c0ce",
      "servicePlanName": "lite",
      "status": "provisioned",
      "userPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
      "lastModifiedDateTime": "2020-07-23T10:29:57Z"
    },
    {
      "@odata.type": "#microsoft.graph.cloudPC",
      "id": "ac74ae8b-85f7-4272-88cc-5419267403ed",
      "displayName": "Demo-1",
      "imageDisplayName": "Custom image name",
      "managedDeviceId": "e87f50c7-fa7f-4687-aade-dd45f3d65970",  
      "managedDeviceName": "A00001D3000",
      "provisioningPolicyId": "13fa0778-ba00-438a-96d3-488c86029dff",
      "servicePlanId": "da5615b4-a484-4742-a019-2d52c91cbfd0",
      "servicePlanName": "standard",
      "status": "provisioning",
      "userPrincipalName": "mrichard@cpccustomer001.onmicrosoft.com",
      "lastModifiedDateTime": "2020-07-28T18:14:34Z"
    }
  ]
}
```
