---
title: "deviceManagementConfigurationPolicy resource type"
description: "Device Management Configuration Policy"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Management Configuration Policy

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementConfigurationPolicies](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-list.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) collection|List properties and relationships of the [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) objects.|
|[Get deviceManagementConfigurationPolicy](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-get.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md)|Read properties and relationships of the [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) object.|
|[Create deviceManagementConfigurationPolicy](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-create.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md)|Create a new [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) object.|
|[Delete deviceManagementConfigurationPolicy](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-delete.md)|None|Deletes a [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md).|
|[Update deviceManagementConfigurationPolicy](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-update.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md)|Update the properties of a [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) object.|
|[assign action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-assign.md)|[deviceManagementConfigurationPolicyAssignment](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicyassignment.md) collection||
|[createCopy action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-createcopy.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md)||
|[reorder action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-reorder.md)|None||
|[retrieveLatestUpgradeDefaultBaselinePolicy function](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-retrievelatestupgradedefaultbaselinepolicy.md)|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md)||
|[retrieveJustInTimeConfiguration action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-retrievejustintimeconfiguration.md)|[deviceManagementConfigurationJustInTimeAssignmentPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationjustintimeassignmentpolicy.md)||
|[assignJustInTimeConfiguration action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-assignjustintimeconfiguration.md)|Boolean||
|[retrieveEnrollmentTimeDeviceMembershipTarget action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-retrieveenrollmenttimedevicemembershiptarget.md)|[enrollmentTimeDeviceMembershipTargetResult](../resources/intune-shared-enrollmenttimedevicemembershiptargetresult.md)||
|[setEnrollmentTimeDeviceMembershipTarget action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-setenrollmenttimedevicemembershiptarget.md)|[enrollmentTimeDeviceMembershipTargetResult](../resources/intune-shared-enrollmenttimedevicemembershiptargetresult.md)||
|[clearEnrollmentTimeDeviceMembershipTarget action](../api/intune-deviceconfigv2-devicemanagementconfigurationpolicy-clearenrollmenttimedevicemembershiptarget.md)|Boolean||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the policy document. Automatically generated.|
|name|String|Policy name|
|description|String|Policy description|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms for this policy. The possible values are: `none`, `android`, `iOS`, `macOS`, `windows10X`, `windows10`, `linux`, `unknownFutureValue`, `androidEnterprise`, `aosp`, `visionOS`, `tvOS`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies for this policy. The possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `appleRemoteManagement`, `microsoftSense`, `exchangeOnline`, `mobileApplicationManagement`, `linuxMdm`, `extensibility`, `enrollment`, `endpointPrivilegeManagement`, `unknownFutureValue`, `windowsOsRecovery`, `android`.|
|createdDateTime|DateTimeOffset|Policy creation date and time|
|lastModifiedDateTime|DateTimeOffset|Policy last modification date and time|
|settingCount|Int32|Number of settings|
|creationSource|String|Policy creation source|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|isAssigned|Boolean|Policy assignment status. This property is read-only.|
|templateReference|[deviceManagementConfigurationPolicyTemplateReference](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplatereference.md)|Template reference information|
|priorityMetaData|[deviceManagementPriorityMetaData](../resources/intune-deviceconfigv2-devicemanagementprioritymetadata.md)|Indicates the priority of each policies that are selected by the admin during enrollment process|

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
  "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicy",
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
  "templateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicyTemplateReference",
    "templateId": "String",
    "templateFamily": "String",
    "templateDisplayName": "String",
    "templateDisplayVersion": "String"
  },
  "priorityMetaData": {
    "@odata.type": "microsoft.graph.deviceManagementPriorityMetaData",
    "priority": 1024
  }
}
```