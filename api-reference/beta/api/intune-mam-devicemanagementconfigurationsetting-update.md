---
title: "Update deviceManagementConfigurationSetting"
description: "Update the properties of a deviceManagementConfigurationSetting object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagementConfigurationSetting

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagementConfigurationSetting](../resources/intune-mam-devicemanagementconfigurationsetting.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}/settings/{deviceManagementConfigurationSettingId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagementConfigurationSetting](../resources/intune-mam-devicemanagementconfigurationsetting.md) object.

The following table shows the properties that are required when you create the [deviceManagementConfigurationSetting](../resources/intune-mam-devicemanagementconfigurationsetting.md).

|Property|Type|Description|
|:---|:---|:---|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagementConfigurationSetting](../resources/intune-mam-devicemanagementconfigurationsetting.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}/settings/{deviceManagementConfigurationSettingId}
Content-type: application/json
Content-length: 78

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 78

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting"
}
```
