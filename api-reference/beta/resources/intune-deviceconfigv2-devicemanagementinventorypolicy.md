---
title: "deviceManagementInventoryPolicy resource type"
description: "Device Management Inventory Policy"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementInventoryPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Management Inventory Policy

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementInventoryPolicies](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-list.md)|[deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md) collection|List properties and relationships of the [deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md) objects.|
|[Get deviceManagementInventoryPolicy](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-get.md)|[deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md)|Read properties and relationships of the [deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md) object.|
|[Create deviceManagementInventoryPolicy](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-create.md)|[deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md)|Create a new [deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md) object.|
|[Delete deviceManagementInventoryPolicy](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-delete.md)|None|Deletes a [deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md).|
|[Update deviceManagementInventoryPolicy](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-update.md)|[deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md)|Update the properties of a [deviceManagementInventoryPolicy](../resources/intune-deviceconfigv2-devicemanagementinventorypolicy.md) object.|
|[assign action](../api/intune-deviceconfigv2-devicemanagementinventorypolicy-assign.md)|[deviceManagementConfigurationPolicyAssignment](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicyassignment.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the policy document. Automatically generated.|
|name|String|Policy name|
|description|String|Policy description|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms for this policy. Possible values are: `none`, `android`, `iOS`, `macOS`, `windows10X`, `windows10`, `linux`, `unknownFutureValue`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies for this policy. Possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `appleRemoteManagement`, `microsoftSense`, `exchangeOnline`, `mobileApplicationManagement`, `linuxMdm`, `extensibility`, `enrollment`, `endpointPrivilegeManagement`, `unknownFutureValue`, `windowsOsRecovery`.|
|createdDateTime|DateTimeOffset|Policy creation date and time. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Policy last modification date and time. This property is read-only.|
|settingCount|Int32|Number of settings. Valid values 1 to 5000. This property is read-only.|
|creationSource|String|Policy creation source|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|isAssigned|Boolean|Policy assignment status. This property is read-only.|
|version|Int32|Version of the Policy. Valid values 0 to 1000. This property is read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|settings|[deviceManagementConfigurationSetting](../resources/intune-deviceconfigv2-devicemanagementconfigurationsetting.md) collection|Policy settings|
|assignments|[deviceManagementConfigurationPolicyAssignment](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicyassignment.md) collection|Policy assignments|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementInventoryPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementInventoryPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "platforms": "String",
  "technologies": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "settingCount": 1024,
  "creationSource": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "isAssigned": true,
  "version": 1024
}
```
