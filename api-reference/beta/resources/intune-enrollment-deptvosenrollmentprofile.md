---
title: "depTvOSEnrollmentProfile resource type"
description: "The depTvOSEnrollmentProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile specific to Apple TV device configuration. This type of profile must be assigned to Apple TV devices before the devices can enroll via DEP. However, This entity type will only be used as a navigation property to fetch the display name of the profile while getting the exitsing depOnboardingSetting entity, it won't support any operations, as the new entity is supported in device configuration(DCV2) graph calls"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# depTvOSEnrollmentProfile resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The depTvOSEnrollmentProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile specific to Apple TV device configuration. This type of profile must be assigned to Apple TV devices before the devices can enroll via DEP. However, This entity type will only be used as a navigation property to fetch the display name of the profile while getting the exitsing depOnboardingSetting entity, it won't support any operations, as the new entity is supported in device configuration(DCV2) graph calls


Inherits from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depTvOSEnrollmentProfiles](../api/intune-enrollment-deptvosenrollmentprofile-list.md)|[depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md) collection|List properties and relationships of the [depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md) objects.|
|[Get depTvOSEnrollmentProfile](../api/intune-enrollment-deptvosenrollmentprofile-get.md)|[depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md)|Read properties and relationships of the [depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md) object.|
|[Create depTvOSEnrollmentProfile](../api/intune-enrollment-deptvosenrollmentprofile-create.md)|[depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md)|Create a new [depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md) object.|
|[Delete depTvOSEnrollmentProfile](../api/intune-enrollment-deptvosenrollmentprofile-delete.md)|None|Deletes a [depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md).|
|[Update depTvOSEnrollmentProfile](../api/intune-enrollment-deptvosenrollmentprofile-update.md)|[depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md)|Update the properties of a [depTvOSEnrollmentProfile](../resources/intune-enrollment-deptvosenrollmentprofile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|displayName|String|Name of the profile Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|description|String|Description of the profile Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|enableAuthenticationViaCompanyPortal|Boolean|Indicates to authenticate with Apple Setup Assistant instead of Company Portal. Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|
|requireCompanyPortalOnSetupAssistantEnrolledDevices|Boolean|Indicates that Company Portal is required on setup assistant enrolled devices Inherited from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.depTvOSEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depTvOSEnrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String",
  "enableAuthenticationViaCompanyPortal": true,
  "requireCompanyPortalOnSetupAssistantEnrolledDevices": true
}
```