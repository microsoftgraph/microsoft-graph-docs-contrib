---
title: "deviceEnrollmentLimitConfiguration resource type"
description: "Device Enrollment Configuration that restricts the number of devices a user can enroll"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceEnrollmentLimitConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Enrollment Configuration that restricts the number of devices a user can enroll


Inherits from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceEnrollmentLimitConfigurations](../api/intune-onboarding-deviceenrollmentlimitconfiguration-list.md)|[deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md) collection|List properties and relationships of the [deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md) objects.|
|[Get deviceEnrollmentLimitConfiguration](../api/intune-onboarding-deviceenrollmentlimitconfiguration-get.md)|[deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md)|Read properties and relationships of the [deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md) object.|
|[Create deviceEnrollmentLimitConfiguration](../api/intune-onboarding-deviceenrollmentlimitconfiguration-create.md)|[deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md)|Create a new [deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md) object.|
|[Delete deviceEnrollmentLimitConfiguration](../api/intune-onboarding-deviceenrollmentlimitconfiguration-delete.md)|None|Deletes a [deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md).|
|[Update deviceEnrollmentLimitConfiguration](../api/intune-onboarding-deviceenrollmentlimitconfiguration-update.md)|[deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md)|Update the properties of a [deviceEnrollmentLimitConfiguration](../resources/intune-onboarding-deviceenrollmentlimitconfiguration.md) object.|

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
|deviceEnrollmentConfigurationType|[deviceEnrollmentConfigurationType](../resources/intune-onboarding-deviceenrollmentconfigurationtype.md)|Support for Enrollment Configuration Type Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md). Possible values are: `unknown`, `limit`, `platformRestrictions`, `windowsHelloForBusiness`, `defaultLimit`, `defaultPlatformRestrictions`, `defaultWindowsHelloForBusiness`, `defaultWindows10EnrollmentCompletionPageConfiguration`, `windows10EnrollmentCompletionPageConfiguration`, `deviceComanagementAuthorityConfiguration`, `singlePlatformRestriction`, `unknownFutureValue`, `enrollmentNotificationsConfiguration`, `windowsRestore`.|
|limit|Int32|The maximum number of devices that a user can enroll|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[enrollmentConfigurationAssignment](../resources/intune-onboarding-enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceEnrollmentLimitConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentLimitConfiguration",
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
  "limit": 1024
}
```