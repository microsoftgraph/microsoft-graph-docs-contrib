---
title: "managedDeviceMobileAppConfigurationState resource type"
description: "Managed Device Mobile App Configuration State for a given device."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# managedDeviceMobileAppConfigurationState resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Managed Device Mobile App Configuration State for a given device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceMobileAppConfigurationStates](../api/intune-deviceconfig-managedDeviceMobileAppConfigurationState-list.md)|[managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md) collection|List properties and relationships of the [managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md) objects.|
|[Get managedDeviceMobileAppConfigurationState](../api/intune-deviceconfig-managedDeviceMobileAppConfigurationState-get.md)|[managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md)|Read properties and relationships of the [managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md) object.|
|[Create managedDeviceMobileAppConfigurationState](../api/intune-deviceconfig-managedDeviceMobileAppConfigurationState-create.md)|[managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md)|Create a new [managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md) object.|
|[Delete managedDeviceMobileAppConfigurationState](../api/intune-deviceconfig-managedDeviceMobileAppConfigurationState-delete.md)|None|Deletes a [managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md).|
|[Update managedDeviceMobileAppConfigurationState](../api/intune-deviceconfig-managedDeviceMobileAppConfigurationState-update.md)|[managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md)|Update the properties of a [managedDeviceMobileAppConfigurationState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationState.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|settingStates|[managedDeviceMobileAppConfigurationSettingState](../resources/intune-deviceconfig-managedDeviceMobileAppConfigurationSettingState.md) collection|**TODO: Add description.**|
|displayName|String|The name of the policy for this policyBase|
|version|Int32|The version of the policy|
|platformType|[policyPlatformType](../resources/intune-shared-policyPlatformType.md)|Platform type that the policy applies to. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `all`.|
|state|[complianceStatus](../resources/intune-shared-complianceStatus.md)|The compliance state of the policy. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|
|settingCount|Int32|Count of how many setting a policy holds|
|userId|String|User unique identifier, must be Guid|
|userPrincipalName|String|User Principal Name|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceMobileAppConfigurationState",
  "id": "String (identifier)",
  "settingStates": [
    {
      "@odata.type": "microsoft.graph.managedDeviceMobileAppConfigurationSettingState",
      "setting": "String",
      "settingName": "String",
      "instanceDisplayName": "String",
      "state": "String",
      "errorCode": 1024,
      "errorDescription": "String",
      "userId": "String",
      "userName": "String",
      "userEmail": "String",
      "userPrincipalName": "String",
      "sources": [
        {
          "@odata.type": "microsoft.graph.settingSource",
          "id": "String",
          "displayName": "String"
        }
      ],
      "currentValue": "String"
    }
  ],
  "displayName": "String",
  "version": 1024,
  "platformType": "String",
  "state": "String",
  "settingCount": 1024,
  "userId": "String",
  "userPrincipalName": "String"
}
```

