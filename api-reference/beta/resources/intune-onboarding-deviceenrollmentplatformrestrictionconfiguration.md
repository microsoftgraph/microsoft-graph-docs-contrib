---
title: "deviceEnrollmentPlatformRestrictionConfiguration resource type"
description: "Device Enrollment Configuration that restricts the types of devices a user can enroll for a single platform"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceEnrollmentPlatformRestrictionConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Enrollment Configuration that restricts the types of devices a user can enroll for a single platform


Inherits from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceEnrollmentPlatformRestrictionConfigurations](../api/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration-list.md)|[deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md) collection|List properties and relationships of the [deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md) objects.|
|[Get deviceEnrollmentPlatformRestrictionConfiguration](../api/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration-get.md)|[deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md)|Read properties and relationships of the [deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md) object.|
|[Create deviceEnrollmentPlatformRestrictionConfiguration](../api/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration-create.md)|[deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md)|Create a new [deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md) object.|
|[Delete deviceEnrollmentPlatformRestrictionConfiguration](../api/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration-delete.md)|None|Deletes a [deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md).|
|[Update deviceEnrollmentPlatformRestrictionConfiguration](../api/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration-update.md)|[deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md)|Update the properties of a [deviceEnrollmentPlatformRestrictionConfiguration](../resources/intune-onboarding-deviceenrollmentplatformrestrictionconfiguration.md) object.|

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
|platformRestriction|[deviceEnrollmentPlatformRestriction](../resources/intune-onboarding-deviceenrollmentplatformrestriction.md)|Restrictions based on platform, platform operating system version, and device ownership|
|platformType|[enrollmentRestrictionPlatformType](../resources/intune-onboarding-enrollmentrestrictionplatformtype.md)|Type of platform for which this restriction applies. Possible values are: `allPlatforms`, `ios`, `windows`, `windowsPhone`, `android`, `androidForWork`, `androidAosp`, `mac`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[enrollmentConfigurationAssignment](../resources/intune-onboarding-enrollmentconfigurationassignment.md) collection|The list of group assignments for the device configuration profile Inherited from [deviceEnrollmentConfiguration](../resources/intune-shared-deviceenrollmentconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestrictionConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceEnrollmentPlatformRestrictionConfiguration",
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
  "platformRestriction": {
    "@odata.type": "microsoft.graph.deviceEnrollmentPlatformRestriction",
    "platformBlocked": true,
    "personalDeviceEnrollmentBlocked": true,
    "osMinimumVersion": "String",
    "osMaximumVersion": "String",
    "blockedManufacturers": [
      "String"
    ],
    "blockedSkus": [
      "String"
    ]
  },
  "platformType": "String"
}
```



