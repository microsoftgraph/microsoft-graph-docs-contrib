---
title: "Create deviceAndAppManagementRingAssignmentConfiguration"
description: "Create a new deviceAndAppManagementRingAssignmentConfiguration object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create deviceAndAppManagementRingAssignmentConfiguration

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) object.

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
POST /deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}/assignmentConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceAndAppManagementRingAssignmentConfiguration object.

The following table shows the properties that are required when you create the deviceAndAppManagementRingAssignmentConfiguration.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target assignment defined by the admin.|
|operation|[deviceAndAppManagementAssignmentOperationType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentoperationtype.md)|The target assignment operation. Possible values are: `add`, `unknownFutureValue`.|
|assignmentResults|[deviceAndAppManagementRingAssignmentResult](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentresult.md) collection|Individual assignment status tracking for each payload|



## Response
If successful, this method returns a `201 Created` response code and a [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}/assignmentConfigurations
Content-type: application/json
Content-length: 901

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingAssignmentConfiguration",
  "target": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include",
    "organizationalUnitId": "Organizational Unit Id value",
    "assignmentConflictSetting": {
      "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
      "assignmentOverride": "denied",
      "versionNumber": 13
    }
  },
  "operation": "unknownFutureValue",
  "assignmentResults": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementRingAssignmentResult",
      "payloadId": "f12f6c03-6c03-f12f-036c-2ff1036c2ff1",
      "status": "activating",
      "message": "Message value"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 950

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingAssignmentConfiguration",
  "id": "8da7aa4d-aa4d-8da7-4daa-a78d4daaa78d",
  "target": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include",
    "organizationalUnitId": "Organizational Unit Id value",
    "assignmentConflictSetting": {
      "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
      "assignmentOverride": "denied",
      "versionNumber": 13
    }
  },
  "operation": "unknownFutureValue",
  "assignmentResults": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementRingAssignmentResult",
      "payloadId": "f12f6c03-6c03-f12f-036c-2ff1036c2ff1",
      "status": "activating",
      "message": "Message value"
    }
  ]
}
```