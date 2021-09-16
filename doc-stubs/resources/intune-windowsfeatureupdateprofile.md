---
title: "windowsFeatureUpdateProfile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# windowsFeatureUpdateProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsFeatureUpdateProfiles](../api/intune-windowsfeatureupdateprofile-list.md)|[windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) collection|Get a list of the [windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) objects and their properties.|
|[Create windowsFeatureUpdateProfile](../api/intune-windowsfeatureupdateprofile-create.md)|[windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md)|Create a new [windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) object.|
|[Get windowsFeatureUpdateProfile](../api/intune-windowsfeatureupdateprofile-get.md)|[windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md)|Read the properties and relationships of a [windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) object.|
|[Update windowsFeatureUpdateProfile](../api/intune-windowsfeatureupdateprofile-update.md)|[windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md)|Update the properties of a [windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) object.|
|[Delete windowsFeatureUpdateProfile](../api/intune-windowsfeatureupdateprofile-delete.md)|None|Deletes a [windowsFeatureUpdateProfile](../resources/intune-windowsfeatureupdateprofile.md) object.|
|[List deviceUpdateStates](../api/intune-windowsfeatureupdateprofile-list-deviceupdatestates.md)|[windowsUpdateState](../resources/intune-windowsupdatestate.md) collection|Get the windowsUpdateState resources from the deviceUpdateStates navigation property.|
|[Create windowsUpdateState](../api/intune-windowsfeatureupdateprofile-post-deviceupdatestates.md)|[windowsUpdateState](../resources/intune-windowsupdatestate.md)|Create a new windowsUpdateState object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|deployableContentDisplayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|endOfSupportDate|DateTimeOffset|**TODO: Add Description**|
|featureUpdateVersion|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|roleScopeTagIds|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsFeatureUpdateProfileAssignment](../resources/intune-windowsfeatureupdateprofileassignment.md) collection|**TODO: Add Description**|
|deviceUpdateStates|[windowsUpdateState](../resources/intune-windowsupdatestate.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsFeatureUpdateProfile",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsFeatureUpdateProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "featureUpdateVersion": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "deployableContentDisplayName": "String",
  "endOfSupportDate": "String (timestamp)"
}
```

