---
title: "appleUserInitiatedEnrollmentProfile resource type"
description: "The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# appleUserInitiatedEnrollmentProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List appleUserInitiatedEnrollmentProfiles](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-list.md)|[appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) collection|List properties and relationships of the [appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) objects.|
|[Get appleUserInitiatedEnrollmentProfile](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-get.md)|[appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md)|Read properties and relationships of the [appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) object.|
|[Create appleUserInitiatedEnrollmentProfile](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-create.md)|[appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md)|Create a new [appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) object.|
|[Delete appleUserInitiatedEnrollmentProfile](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-delete.md)|None|Deletes a [appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md).|
|[Update appleUserInitiatedEnrollmentProfile](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-update.md)|[appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md)|Update the properties of a [appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) object.|
|[setPriority action](../api/intune-enrollment-appleuserinitiatedenrollmentprofile-setpriority.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultEnrollmentType|[appleUserInitiatedEnrollmentType](../resources/intune-enrollment-appleuserinitiatedenrollmenttype.md)|The default profile enrollment type. The possible values are: `unknown`, `device`, `user`, `accountDrivenUserEnrollment`, `webDeviceEnrollment`, `unknownFutureValue`.|
|availableEnrollmentTypeOptions|[appleOwnerTypeEnrollmentType](../resources/intune-enrollment-appleownertypeenrollmenttype.md) collection|List of available enrollment type options|
|id|String|The GUID for the object|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|priority|Int32|Priority, 0 is highest|
|platform|[devicePlatformType](../resources/intune-enrollment-deviceplatformtype.md)|The platform of the Device. The possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`.|
|createdDateTime|DateTimeOffset|Profile creation time|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) collection|The list of assignments for this profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appleUserInitiatedEnrollmentProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appleUserInitiatedEnrollmentProfile",
  "defaultEnrollmentType": "String",
  "availableEnrollmentTypeOptions": [
    {
      "@odata.type": "microsoft.graph.appleOwnerTypeEnrollmentType",
      "ownerType": "String",
      "enrollmentType": "String"
    }
  ],
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "priority": 1024,
  "platform": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```