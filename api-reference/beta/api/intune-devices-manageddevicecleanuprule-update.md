---
title: "Update managedDeviceCleanupRule"
description: "Update the properties of a managedDeviceCleanupRule object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update managedDeviceCleanupRule

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/managedDeviceCleanupRules/{managedDeviceCleanupRuleId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object.

The following table shows the properties that are required when you create the [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Indicates the identifier of the device cleanup rule. This id is assigned at the time when the device cleanup rule is created. Read-only.|
|displayName|String|Indicates the display name of the device cleanup rule.|
|description|String|Indicates the description for the device clean up rule.|
|deviceCleanupRulePlatformType|[deviceCleanupRulePlatformType](../resources/intune-devices-devicecleanupruleplatformtype.md)|Indicates the managed device platform for which the admin wants to create the device clean up rule. Possible values are: `all`, `androidAOSP`, `androidDeviceAdministrator`, `androidDedicatedAndFullyManagedCorporateOwnedWorkProfile`, `chromeOS`, `androidPersonallyOwnedWorkProfile`, `ios`, `macOS`, `windows`, `windowsHolographic`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|Indicates the date and time when the device cleanup rule was last modified. This property is read-only.|
|deviceInactivityBeforeRetirementInDays|Int32|Indicates the number of days when the device has not contacted Intune. Valid values 0 to 2147483647|



## Response
If successful, this method returns a `200 OK` response code and an updated [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/managedDeviceCleanupRules/{managedDeviceCleanupRuleId}
Content-type: application/json
Content-length: 244

{
  "@odata.type": "#microsoft.graph.managedDeviceCleanupRule",
  "displayName": "Display Name value",
  "description": "Description value",
  "deviceCleanupRulePlatformType": "androidAOSP",
  "deviceInactivityBeforeRetirementInDays": 6
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 357

{
  "@odata.type": "#microsoft.graph.managedDeviceCleanupRule",
  "id": "9cf0dda2-dda2-9cf0-a2dd-f09ca2ddf09c",
  "displayName": "Display Name value",
  "description": "Description value",
  "deviceCleanupRulePlatformType": "androidAOSP",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "deviceInactivityBeforeRetirementInDays": 6
}
```
