---
title: "Update deviceAndAppManagementDeploymentPlan"
description: "Update the properties of a deviceAndAppManagementDeploymentPlan object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementDeploymentPlan

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object.

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
PATCH /deviceManagement/deploymentPlans/{deviceAndAppManagementDeploymentPlanId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|versionNumber|Int32|Version number of the device and app management deployment plan.|
|displayName|String|The display name of the device and app management deployment plan.|
|description|String|The description of the device and app management deployment plan.|
|roleScopeTagIds|String collection|The role scope tag ids to control device and app management deployment plan visibility.|
|topologyDefinitions|[deviceAndAppManagementDeploymentTopologyDefinition](../resources/intune-gntgraphservice-deviceandappmanagementdeploymenttopologydefinition.md) collection|The topology definitions associated with the device and app management deployment plan.|
|allowedPlatform|[devicePlatformType](../resources/intune-gntgraphservice-deviceplatformtype.md)|The allowed assignment filter platform for the device and app management deployment plan. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`.|
|createdDateTime|DateTimeOffset|The date and time of when the plan was created (UTC).|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the plan was last modified (UTC).|
|topologyCount|Int32|The number of topologies in the deployment plan.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deploymentPlans/{deviceAndAppManagementDeploymentPlanId}
Content-type: application/json
Content-length: 1570

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
  "versionNumber": 13,
  "displayName": "Display Name value",
  "description": "Description value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "topologyDefinitions": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition",
      "topologyDisplayName": "Topology Display Name value",
      "topologyOrder": 13,
      "topologyActivationCriteria": {
        "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
        "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
      },
      "assignmentConfigurations": [
        {
          "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration",
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
          "operation": "unknownFutureValue"
        }
      ]
    }
  ],
  "allowedPlatform": "androidForWork",
  "topologyCount": 13
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1742

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
  "id": "137dc698-c698-137d-98c6-7d1398c67d13",
  "versionNumber": 13,
  "displayName": "Display Name value",
  "description": "Description value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "topologyDefinitions": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition",
      "topologyDisplayName": "Topology Display Name value",
      "topologyOrder": 13,
      "topologyActivationCriteria": {
        "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
        "startDateTime": "2016-12-31T23:58:46.7156189-08:00"
      },
      "assignmentConfigurations": [
        {
          "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration",
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
          "operation": "unknownFutureValue"
        }
      ]
    }
  ],
  "allowedPlatform": "androidForWork",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "topologyCount": 13
}
```