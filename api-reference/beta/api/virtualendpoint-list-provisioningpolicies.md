---
title: "List provisioningPolicies"
description: "Get the cloudPcProvisioningPolicy resources from the provisioningPolicies navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List provisioningPolicies

Namespace: microsoft.graph

Get the cloudPcProvisioningPolicy resources from the provisioningPolicies navigation property.

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
GET /deviceManagement/virtualEndpoint/provisioningPolicies
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

If successful, this method returns a `200 OK` response code and a collection of [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_cloudpcprovisioningpolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcProvisioningPolicy)"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
      "id": "1d164206-bf41-4fd2-8424-a3192d392273",
      "displayName": "HR provisioning policy",
      "description": "Provisioning policy for India HR employees",
      "onPremisesConnectionId": "4e47d0f6-6f77-44f0-8893-c0fe1701b553",
      "imageId": "53a93bfd-2006-4b76-8f30-5c0f60988105",
      "imageDisplayName": "Custom image name",
      "imageType": {
        "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicyImageType",
        "custom"
      }
    },
    {
      "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
      "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b",
      "displayName": "Marketing provisioning policy",
      "description": "Provisioning policy for West US marketing employees",
      "onPremisesConnectionId": "6bf90392-5fea-459a-9e9d-a2484abb1ef8",
      "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
      "imageDisplayName": "Windows-10 19h1-evd",
      "imageType": {
        "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicyImageType",
        "gallery"
      }
    }
  ]
}
```
