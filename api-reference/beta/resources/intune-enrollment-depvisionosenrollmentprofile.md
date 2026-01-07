---
title: "depVisionOSEnrollmentProfile resource type"
description: "The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# depVisionOSEnrollmentProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.


Inherits from [enrollmentProfile](../resources/intune-enrollment-enrollmentprofile.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List depVisionOSEnrollmentProfiles](../api/intune-enrollment-depvisionosenrollmentprofile-list.md)|[depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md) collection|List properties and relationships of the [depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md) objects.|
|[Get depVisionOSEnrollmentProfile](../api/intune-enrollment-depvisionosenrollmentprofile-get.md)|[depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md)|Read properties and relationships of the [depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md) object.|
|[Create depVisionOSEnrollmentProfile](../api/intune-enrollment-depvisionosenrollmentprofile-create.md)|[depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md)|Create a new [depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md) object.|
|[Delete depVisionOSEnrollmentProfile](../api/intune-enrollment-depvisionosenrollmentprofile-delete.md)|None|Deletes a [depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md).|
|[Update depVisionOSEnrollmentProfile](../api/intune-enrollment-depvisionosenrollmentprofile-update.md)|[depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md)|Update the properties of a [depVisionOSEnrollmentProfile](../resources/intune-enrollment-depvisionosenrollmentprofile.md) object.|

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
  "@odata.type": "microsoft.graph.depVisionOSEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.depVisionOSEnrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String",
  "enableAuthenticationViaCompanyPortal": true,
  "requireCompanyPortalOnSetupAssistantEnrolledDevices": true
}
```