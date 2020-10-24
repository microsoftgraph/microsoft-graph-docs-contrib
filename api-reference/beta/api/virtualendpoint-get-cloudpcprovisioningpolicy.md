---
title: "Get provisioningPolicies"
description: "Read the properties and relationships of a cloudPcProvisioningPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get provisioningPolicies

Namespace: microsoft.graph

Read the properties and relationships of a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.

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
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}?$expand=assignments
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

If successful, this method returns a `200 OK` response code and a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_cloudpcprovisioningpolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/{id}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
    "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b",
    "displayName": "Marketing provisioning policy",
    "description": "Provisioning policy for West US marketing employees",
    "onPremisesConnectionId": "6bf90392-5fea-459a-9e9d-a2484abb1ef8",
    "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
    "imageDisplayName": "Windows-10 19h1-evd",
    "imageType": "gallery"
  }
}
```

### Request

<!-- {
  "blockType": "request",
  "name": "get_cloudpcprovisioningpolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/{id}?$expand=assignments
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
    "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b",
    "displayName": "Marketing provisioning policy",
    "description": "Provisioning policy for West US marketing employees",
    "onPremisesConnectionId": "6bf90392-5fea-459a-9e9d-a2484abb1ef8",
    "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
    "imageDisplayName": "Windows-10 19h1-evd",
    "imageType": "gallery",
    "assignments": [
      {
        "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26bfd9",
        "target": {
          "@odata.type":"#microsoft.graph.cloudPCManagementGroupAssignmentTarget",
          "groupId":"64ff06de-9c00-4a5a-98b5-7f5abe26bfd9"
          }
      },
      {
        "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_fac916fa-78a9-4d6f-a31f-62bf98924402",
        "target": {
          "@odata.type":"#microsoft.graph.cloudPCManagementGroupAssignmentTarget",
          "groupId":"fac916fa-78a9-4d6f-a31f-62bf98924402"
          }
      }
    ]
  }
}
```
