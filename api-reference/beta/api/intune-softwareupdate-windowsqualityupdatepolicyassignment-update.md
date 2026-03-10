---
title: "Update windowsQualityUpdatePolicyAssignment"
description: "Update the properties of a windowsQualityUpdatePolicyAssignment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update windowsQualityUpdatePolicyAssignment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsQualityUpdatePolicyAssignment](../resources/intune-softwareupdate-windowsqualityupdatepolicyassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
```http
PATCH /deviceManagement/windowsQualityUpdatePolicies/{windowsQualityUpdatePolicyId}/assignments/{windowsQualityUpdatePolicyAssignmentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsQualityUpdatePolicyAssignment](../resources/intune-softwareupdate-windowsqualityupdatepolicyassignment.md) object.

The following table shows the properties that are required when you create the [windowsQualityUpdatePolicyAssignment](../resources/intune-softwareupdate-windowsqualityupdatepolicyassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The id for CloudQualityUpdateProfileAssignment entity. This id is assigned when assigning the profile to a group. Read-only|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target that the Windows quality update policy is assigned to.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsQualityUpdatePolicyAssignment](../resources/intune-softwareupdate-windowsqualityupdatepolicyassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/windowsQualityUpdatePolicies/{windowsQualityUpdatePolicyId}/assignments/{windowsQualityUpdatePolicyAssignmentId}
Content-type: application/json
Content-length: 343

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdatePolicyAssignment",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 392

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdatePolicyAssignment",
  "id": "ac3f0171-0171-ac3f-7101-3fac71013fac",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  }
}
```