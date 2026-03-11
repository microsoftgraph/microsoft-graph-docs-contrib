---
title: "List deviceAndAppManagementRingAssignmentConfigurations"
description: "List properties and relationships of the deviceAndAppManagementRingAssignmentConfiguration objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List deviceAndAppManagementRingAssignmentConfigurations

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}/assignmentConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) objects in the response body.

## Example

### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deployments/{deviceAndAppManagementDeploymentId}/rings/{deviceAndAppManagementDeploymentRingId}/assignmentConfigurations
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1071

{
  "value": [
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
  ]
}
```