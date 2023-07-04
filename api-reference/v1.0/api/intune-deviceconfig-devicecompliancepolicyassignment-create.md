---
title: "Create deviceCompliancePolicyAssignment"
description: "Create a new deviceCompliancePolicyAssignment object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create deviceCompliancePolicyAssignment

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/assignments
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceCompliancePolicyAssignment object.

The following table shows the properties that are required when you create the deviceCompliancePolicyAssignment.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Target for the compliance policy assignment.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_deviceconfig_devicecompliancepolicyassignment_create_create_devicecompliancepolicyassignment" }-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/assignments
Content-type: application/json
Content-length: 224

{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
  "target": {
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",
    "collectionId": "Collection Id value"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-deviceconfig-devicecompliancepolicyassignment-create-create-devicecompliancepolicyassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.deviceCompliancePolicyAssignment" }-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 273

{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
  "id": "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92",
  "target": {
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",
    "collectionId": "Collection Id value"
  }
}
```
