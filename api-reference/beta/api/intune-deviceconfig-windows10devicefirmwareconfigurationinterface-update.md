---
title: "Update windows10DeviceFirmwareConfigurationInterface"
description: "Update the properties of a windows10DeviceFirmwareConfigurationInterface object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update windows10DeviceFirmwareConfigurationInterface

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windows10DeviceFirmwareConfigurationInterface](../resources/intune-deviceconfig-windows10devicefirmwareconfigurationinterface.md) object.

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
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/groupAssignments/{deviceConfigurationGroupAssignmentId}/deviceConfiguration
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsDomainJoinConfiguration/networkAccessConfigurations/{deviceConfigurationId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windows10DeviceFirmwareConfigurationInterface](../resources/intune-deviceconfig-windows10devicefirmwareconfigurationinterface.md) object.

The following table shows the properties that are required when you create the [windows10DeviceFirmwareConfigurationInterface](../resources/intune-deviceconfig-windows10devicefirmwareconfigurationinterface.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition.md)|The OS edition applicability for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion.md)|The OS version applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode.md)|The device mode applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|changeUefiSettingsPermission|[changeUefiSettingsPermission](../resources/intune-deviceconfig-changeuefisettingspermission.md)|Defines the permission level granted to users to change UEFI settings. Possible values are: `notConfiguredOnly`, `none`.|
|virtualizationOfCpuAndIO|[enablement](../resources/intune-shared-enablement.md)|Defines whether CPU and IO virtualization is enabled. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|cameras|[enablement](../resources/intune-shared-enablement.md)|Defines whether built-in cameras are enabled. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|microphonesAndSpeakers|[enablement](../resources/intune-shared-enablement.md)|Defines whether built-in microphones or speakers are enabled. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|radios|[enablement](../resources/intune-shared-enablement.md)|Defines whether built-in radios e.g. WIFI, NFC, Bluetooth, are enabled. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|bootFromExternalMedia|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to boot from external media. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|bootFromBuiltInNetworkAdapters|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to boot from built-in network adapters. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|windowsPlatformBinaryTable|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Windows Platform Binary Table. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|simultaneousMultiThreading|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Simultaneous MultiThreading. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|frontCamera|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Front Camera. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|rearCamera|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable rear camera. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|infraredCamera|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Infrared camera. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|microphone|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Microphone. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|bluetooth|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Bluetooth. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|wirelessWideAreaNetwork|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Wireless Wide Area Network. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|nearFieldCommunication|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Near Field Communication. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|wiFi|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable WiFi. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|usbTypeAPort|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable USB Type A Port. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|sdCard|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable SD Card Port. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|wakeOnLAN|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Wake on LAN. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|wakeOnPower|[enablement](../resources/intune-shared-enablement.md)|Defines whether a user is allowed to enable Wake On Power. Possible values are: `notConfigured`, `enabled`, `disabled`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [windows10DeviceFirmwareConfigurationInterface](../resources/intune-deviceconfig-windows10devicefirmwareconfigurationinterface.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}
Content-type: application/json
Content-length: 1754

{
  "@odata.type": "#microsoft.graph.windows10DeviceFirmwareConfigurationInterface",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "windows10EnterpriseN"
    ],
    "name": "Name value",
    "ruleType": "exclude"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "Min OSVersion value",
    "maxOSVersion": "Max OSVersion value",
    "name": "Name value",
    "ruleType": "exclude"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "sModeConfiguration",
    "name": "Name value",
    "ruleType": "exclude"
  },
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "changeUefiSettingsPermission": "none",
  "virtualizationOfCpuAndIO": "enabled",
  "cameras": "enabled",
  "microphonesAndSpeakers": "enabled",
  "radios": "enabled",
  "bootFromExternalMedia": "enabled",
  "bootFromBuiltInNetworkAdapters": "enabled",
  "windowsPlatformBinaryTable": "enabled",
  "simultaneousMultiThreading": "enabled",
  "frontCamera": "enabled",
  "rearCamera": "enabled",
  "infraredCamera": "enabled",
  "microphone": "enabled",
  "bluetooth": "enabled",
  "wirelessWideAreaNetwork": "enabled",
  "nearFieldCommunication": "enabled",
  "wiFi": "enabled",
  "usbTypeAPort": "enabled",
  "sdCard": "enabled",
  "wakeOnLAN": "enabled",
  "wakeOnPower": "enabled"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1926

{
  "@odata.type": "#microsoft.graph.windows10DeviceFirmwareConfigurationInterface",
  "id": "96474363-4363-9647-6343-479663434796",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "windows10EnterpriseN"
    ],
    "name": "Name value",
    "ruleType": "exclude"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "Min OSVersion value",
    "maxOSVersion": "Max OSVersion value",
    "name": "Name value",
    "ruleType": "exclude"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "sModeConfiguration",
    "name": "Name value",
    "ruleType": "exclude"
  },
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "changeUefiSettingsPermission": "none",
  "virtualizationOfCpuAndIO": "enabled",
  "cameras": "enabled",
  "microphonesAndSpeakers": "enabled",
  "radios": "enabled",
  "bootFromExternalMedia": "enabled",
  "bootFromBuiltInNetworkAdapters": "enabled",
  "windowsPlatformBinaryTable": "enabled",
  "simultaneousMultiThreading": "enabled",
  "frontCamera": "enabled",
  "rearCamera": "enabled",
  "infraredCamera": "enabled",
  "microphone": "enabled",
  "bluetooth": "enabled",
  "wirelessWideAreaNetwork": "enabled",
  "nearFieldCommunication": "enabled",
  "wiFi": "enabled",
  "usbTypeAPort": "enabled",
  "sdCard": "enabled",
  "wakeOnLAN": "enabled",
  "wakeOnPower": "enabled"
}
```