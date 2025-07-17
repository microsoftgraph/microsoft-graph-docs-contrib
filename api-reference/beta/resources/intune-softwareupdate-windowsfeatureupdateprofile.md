---
title: "windowsFeatureUpdateProfile resource type"
description: "Windows Feature Update Profile"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsFeatureUpdateProfile resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Feature Update Profile

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsFeatureUpdateProfiles](../api/intune-softwareupdate-windowsfeatureupdateprofile-list.md)|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) collection|List properties and relationships of the [windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) objects.|
|[Get windowsFeatureUpdateProfile](../api/intune-softwareupdate-windowsfeatureupdateprofile-get.md)|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md)|Read properties and relationships of the [windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) object.|
|[Create windowsFeatureUpdateProfile](../api/intune-softwareupdate-windowsfeatureupdateprofile-create.md)|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md)|Create a new [windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) object.|
|[Delete windowsFeatureUpdateProfile](../api/intune-softwareupdate-windowsfeatureupdateprofile-delete.md)|None|Deletes a [windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md).|
|[Update windowsFeatureUpdateProfile](../api/intune-softwareupdate-windowsfeatureupdateprofile-update.md)|[windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md)|Update the properties of a [windowsFeatureUpdateProfile](../resources/intune-softwareupdate-windowsfeatureupdateprofile.md) object.|
|[assign action](../api/intune-softwareupdate-windowsfeatureupdateprofile-assign.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Identifier of the entity.|
|displayName|String|The display name of the profile.|
|description|String|The description of the profile which is specified by the user.|
|featureUpdateVersion|String|The feature update version that will be deployed to the devices targeted by this profile. The version could be any supported version for example 1709, 1803 or 1809 and so on.|
|rolloutSettings|[windowsUpdateRolloutSettings](../resources/intune-softwareupdate-windowsupdaterolloutsettings.md)|The windows update rollout settings, including offer start date time, offer end date time, and days between each set of offers.|
|createdDateTime|DateTimeOffset|The date time that the profile was created.|
|lastModifiedDateTime|DateTimeOffset|The date time that the profile was last modified.|
|roleScopeTagIds|String collection|List of Scope Tags for this Feature Update entity.|
|deployableContentDisplayName|String|Friendly display name of the quality update profile deployable content|
|endOfSupportDate|DateTimeOffset|The last supported date for a feature update|
|installLatestWindows10OnWindows11IneligibleDevice|Boolean|If true, the latest Microsoft Windows 10 update will be installed on devices ineligible for Microsoft Windows 11|
|installFeatureUpdatesOptional|Boolean|If true, the Windows 11 update will become optional|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsFeatureUpdateProfileAssignment](../resources/intune-softwareupdate-windowsfeatureupdateprofileassignment.md) collection|The list of group assignments of the profile.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsFeatureUpdateProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsFeatureUpdateProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "featureUpdateVersion": "String",
  "rolloutSettings": {
    "@odata.type": "microsoft.graph.windowsUpdateRolloutSettings",
    "offerStartDateTimeInUTC": "String (timestamp)",
    "offerEndDateTimeInUTC": "String (timestamp)",
    "offerIntervalInDays": 1024
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "deployableContentDisplayName": "String",
  "endOfSupportDate": "String (timestamp)",
  "installLatestWindows10OnWindows11IneligibleDevice": true,
  "installFeatureUpdatesOptional": true
}
```