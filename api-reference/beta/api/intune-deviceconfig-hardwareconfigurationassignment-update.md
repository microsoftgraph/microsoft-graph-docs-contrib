---
title: "Update hardwareConfigurationAssignment"
description: "Update the properties of a hardwareConfigurationAssignment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update hardwareConfigurationAssignment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) object.

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
``` http
PATCH /deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/assignments/{hardwareConfigurationAssignmentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) object.

The following table shows the properties that are required when you create the [hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration group assignment entity. This property is read-only.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The Id of the Azure Active Directory group we are targeting the configuration to.|



## Response
If successful, this method returns a `200 OK` response code and an updated [hardwareConfigurationAssignment](../resources/intune-deviceconfig-hardwareconfigurationassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/assignments/{hardwareConfigurationAssignmentId}
Content-type: application/json
Content-length: 590

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationAssignment",
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
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 639

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationAssignment",
  "id": "2ab8e97c-e97c-2ab8-7ce9-b82a7ce9b82a",
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
  }
}
```