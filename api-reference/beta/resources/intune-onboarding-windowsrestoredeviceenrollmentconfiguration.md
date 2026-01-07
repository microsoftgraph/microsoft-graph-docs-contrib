---
title: "windowsRestoreDeviceEnrollmentConfiguration resource type"
description: "Indicates the configuration is of type Windows Restore which refers to the tenant level Windows Backup and Restore settings a user receives during OOBE Windows enrollment"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsRestoreDeviceEnrollmentConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the configuration is of type Windows Restore which refers to the tenant level Windows Backup and Restore settings a user receives during OOBE Windows enrollment


Inherits from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsRestoreDeviceEnrollmentConfigurations](../api/intune-onboarding-windowsrestoredeviceenrollmentconfiguration-list.md)|[windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md) collection|List properties and relationships of the [windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md) objects.|
|[Get windowsRestoreDeviceEnrollmentConfiguration](../api/intune-onboarding-windowsrestoredeviceenrollmentconfiguration-get.md)|[windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md)|Read properties and relationships of the [windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md) object.|
|[Create windowsRestoreDeviceEnrollmentConfiguration](../api/intune-onboarding-windowsrestoredeviceenrollmentconfiguration-create.md)|[windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md)|Create a new [windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md) object.|
|[Delete windowsRestoreDeviceEnrollmentConfiguration](../api/intune-onboarding-windowsrestoredeviceenrollmentconfiguration-delete.md)|None|Deletes a [windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md).|
|[Update windowsRestoreDeviceEnrollmentConfiguration](../api/intune-onboarding-windowsrestoredeviceenrollmentconfiguration-update.md)|[windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md)|Update the properties of a [windowsRestoreDeviceEnrollmentConfiguration](../resources/intune-onboarding-windowsrestoredeviceenrollmentconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the account Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|displayName|String|The display name of the device enrollment configuration Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|description|String|The description of the device enrollment configuration Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|priority|Int32|Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value. Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|createdDateTime|DateTimeOffset|Created date time in UTC of the device enrollment configuration Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified date time in UTC of the device enrollment configuration Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|version|Int32|The version of the device enrollment configuration Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|roleScopeTagIds|String collection|Optional role scope tags for the enrollment restrictions. Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|
|deviceEnrollmentConfigurationType|[deviceEnrollmentConfigurationType](../resources/intune-onboarding-deviceenrollmentconfigurationtype.md)|Support for Enrollment Configuration Type Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md). The possible values are: `unknown`, `limit`, `platformRestrictions`, `windowsHelloForBusiness`, `defaultLimit`, `defaultPlatformRestrictions`, `defaultWindowsHelloForBusiness`, `defaultWindows10EnrollmentCompletionPageConfiguration`, `windows10EnrollmentCompletionPageConfiguration`, `deviceComanagementAuthorityConfiguration`, `singlePlatformRestriction`, `unknownFutureValue`, `enrollmentNotificationsConfiguration`, `windowsRestore`.|
|state|[enablement](../resources/intune-shared-enablement.md)|Indicates the configuration state of the Windows Restore setting. Possible values are 'notConfigured', 'enabled', and 'disabled'. Default is: notConfigured. This is a tenant level default setting that is not targetable. This property's value is applied during Enrollment. The possible values are: `notConfigured`, `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[enrollmentConfigurationAssignment](../resources/intune-onboarding-enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsRestoreDeviceEnrollmentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsRestoreDeviceEnrollmentConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "priority": 1024,
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": 1024,
  "roleScopeTagIds": [
    "String"
  ],
  "deviceEnrollmentConfigurationType": "String",
  "state": "String"
}
```