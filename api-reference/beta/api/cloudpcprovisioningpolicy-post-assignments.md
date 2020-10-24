---
title: "Add assignments"
description: "Add assignments by posting to the assignments collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add assignments

Namespace: microsoft.graph

Assign the provisioning policy to a group.

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
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assign/
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.

The following table shows the properties that are required when you create the [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The provisioning policy assignment id. If the target is a group, the id is in the format of {policyId}_{groupId}|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the provisioning policy.|

## Response

If successful, this method returns a `204 No Content` response code and a [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_cloudpcprovisioningpolicyassignment_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assign
Content-Type: application/json
Content-length: 170

{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicyAssignment",
"assignments": [
    {
      "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26bfd9",
      "target":{
        "groupId":"64ff06de-9c00-4a5a-98b5-7f5abe26bfd9"
        }
    },
    {
      "target":{
        "groupId":"655d5e08-4667-44d7-8cfb-6ca757a848da"
        }
    }
  ]
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
