---
title: "Create provisioningPolicies"
description: "Create a new cloudPcProvisioningPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create provisioningPolicies

Namespace: microsoft.graph

Create a new cloudPcProvisioningPolicy object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.

The following table shows the properties that are required when you create the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The provisioning policy id. Inherited from [entity](../resources/entity.md)|
|displayName|String|The provisioning policy display name|
|description|String|The provisioning policy description|
|onPremisesConnectionId|String|Id of the cloudPcOnPremisesConnection that indicates the virtual network that will enable Cloud PCs to have network connectivity and the domain that the Cloud PCs should join|
|imageId|String|Id of the OS Image to provision Cloud PCs with. For gallery type image, the id is of {publisher_offer_sku} format|
|imageDisplayName|String|Display name of the OS Image to provision Cloud PCs with|
|imageType|cloudPcProvisioningPolicyImageType|Type of the OS Image to provision Cloud PCs with. The type can be gallery or custom. Possible values are: `gallery`, `custom`.|
|assignments|[CloudPcProvisioningPolicyAssignment](../resources/CloudPcProvisioningPolicyAssignment.md) collection|The collection of assignments for the provisioning policy|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_cloudpcprovisioningpolicy_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies
Content-Type: application/json
Content-length: 245

{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
  "displayName": "HR provisioning policy",
  "description": "Provisioning policy for India HR employees",
  "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1cca7f033",
  "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
  "imageDisplayName": "Windows-10 19h1-evd",
  "imageType": "gallery"
}
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
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
  "id": "1d164206-bf41-4fd2-8424-a3192d392273",
  "displayName": "HR provisioning policy",
  "description": "Provisioning policy for India HR employees",
  "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1cca7f033",
  "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
  "imageDisplayName": "Windows-10 19h1-evd",
  "imageType": "gallery"
  }
```
