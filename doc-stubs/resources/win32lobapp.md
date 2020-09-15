---
title: "win32LobApp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobApp resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [mobileLobApp](../resources/mobilelobapp.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List win32LobApp](../api/win32lobapp-list.md)|[win32LobApp](../resources/win32lobapp.md) collection|Get a list of the [win32LobApp](../resources/win32lobapp.md) objects and their properties.|
|[Create win32LobApp](../api/win32lobapp-create.md)|[win32LobApp](../resources/win32lobapp.md)|Create a new [win32LobApp](../resources/win32lobapp.md) object.|
|[Get win32LobApp](../api/win32lobapp-get.md)|[win32LobApp](../resources/win32lobapp.md)|Read the properties and relationships of a [win32LobApp](../resources/win32lobapp.md) object.|
|[Update win32LobApp](../api/win32lobapp-update.md)|[win32LobApp](../resources/win32lobapp.md)|Update the properties of a [win32LobApp](../resources/win32lobapp.md) object.|
|[Delete win32LobApp](../api/win32lobapp-delete.md)|None|Deletes a [win32LobApp](../resources/win32lobapp.md) object.|
|[List assignments](../api/win32lobapp-list-assignments.md)|[mobileAppAssignment](../resources/intune-mobileappassignment.md) collection|Get the mobileAppAssignment resources from the assignments navigation property.|
|[Create assignments](../api/win32lobapp-post-assignments.md)|[mobileAppAssignment](../resources/intune-mobileappassignment.md)|Create a new mobileAppAssignment object.|
|[Get assignments](../api/win32lobapp-get-mobileappassignment.md)|[mobileAppAssignment](../resources/intune-mobileappassignment.md)|Read the properties and relationships of a [mobileAppAssignment](../resources/intune-mobileappassignment.md) object.|
|[Update assignments](../api/win32lobapp-update-assignments.md)|[mobileAppAssignment](../resources/intune-mobileappassignment.md)|Update the properties of an assignments object.|
|[Delete assignments](../api/win32lobapp-delete-assignments.md)|None|Delete a [mobileAppAssignment](../resources/intune-mobileappassignment.md) object.|
|[List categories](../api/win32lobapp-list-categories.md)|[mobileAppCategory](../resources/intune-mobileappcategory.md) collection|Get the mobileAppCategory resources from the categories navigation property.|
|[Add categories](../api/win32lobapp-post-categories.md)|[mobileAppCategory](../resources/intune-mobileappcategory.md)|Add categories by posting to the categories collection.|
|[Remove categories](../api/win32lobapp-delete-categories.md)|None|Remove a [mobileAppCategory](../resources/intune-mobileappcategory.md) object.|
|[List contentVersions](../api/win32lobapp-list-contentversions.md)|[mobileAppContent](../resources/intune-mobileappcontent.md) collection|Get the mobileAppContent resources from the contentVersions navigation property.|
|[Create contentVersions](../api/win32lobapp-post-contentversions.md)|[mobileAppContent](../resources/intune-mobileappcontent.md)|Create a new mobileAppContent object.|
|[Get contentVersions](../api/win32lobapp-get-mobileappcontent.md)|[mobileAppContent](../resources/intune-mobileappcontent.md)|Read the properties and relationships of a [mobileAppContent](../resources/intune-mobileappcontent.md) object.|
|[Update contentVersions](../api/win32lobapp-update-contentversions.md)|[mobileAppContent](../resources/intune-mobileappcontent.md)|Update the properties of a contentVersions object.|
|[Delete contentVersions](../api/win32lobapp-delete-contentversions.md)|None|Delete a [mobileAppContent](../resources/intune-mobileappcontent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicableArchitectures|windowsArchitecture|**TODO: Add Description**. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|committedContentVersion|String|**TODO: Add Description** Inherited from [mobileLobApp](../resources/mobilelobapp.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|description|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|developer|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|displayName|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|fileName|String|**TODO: Add Description** Inherited from [mobileLobApp](../resources/mobilelobapp.md)|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|informationUrl|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|installCommandLine|String|**TODO: Add Description**|
|installExperience|[win32LobAppInstallExperience](../resources/intune-win32lobappinstallexperience.md)|**TODO: Add Description**|
|isFeatured|Boolean|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-mimecontent.md)|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|minimumCpuSpeedInMHz|Int32|**TODO: Add Description**|
|minimumFreeDiskSpaceInMB|Int32|**TODO: Add Description**|
|minimumMemoryInMB|Int32|**TODO: Add Description**|
|minimumNumberOfProcessors|Int32|**TODO: Add Description**|
|minimumSupportedWindowsRelease|String|**TODO: Add Description**|
|msiInformation|[win32LobAppMsiInformation](../resources/intune-win32lobappmsiinformation.md)|**TODO: Add Description**|
|notes|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|owner|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|privacyInformationUrl|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|publisher|String|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md)|
|publishingState|mobileAppPublishingState|**TODO: Add Description** Inherited from [mobileApp](../resources/intune-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|returnCodes|[win32LobAppReturnCode](../resources/intune-win32lobappreturncode.md) collection|**TODO: Add Description**|
|rules|[win32LobAppRule](../resources/intune-win32lobapprule.md) collection|**TODO: Add Description**|
|setupFilePath|String|**TODO: Add Description**|
|size|Int64|**TODO: Add Description** Inherited from [mobileLobApp](../resources/mobilelobapp.md)|
|uninstallCommandLine|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[mobileAppAssignment](../resources/intune-mobileappassignment.md) collection|**TODO: Add Description** Inherited from [mobileApp](../resources/mobileapp.md)|
|categories|[mobileAppCategory](../resources/intune-mobileappcategory.md) collection|**TODO: Add Description** Inherited from [mobileApp](../resources/mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune-mobileappcontent.md) collection|**TODO: Add Description** Inherited from [mobileLobApp](../resources/mobilelobapp.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.win32LobApp",
  "baseType": "microsoft.graph.mobileLobApp",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobApp",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "isFeatured": "Boolean",
  "privacyInformationUrl": "String",
  "informationUrl": "String",
  "owner": "String",
  "developer": "String",
  "notes": "String",
  "publishingState": "String",
  "committedContentVersion": "String",
  "fileName": "String",
  "size": "Integer",
  "installCommandLine": "String",
  "uninstallCommandLine": "String",
  "applicableArchitectures": "String",
  "minimumFreeDiskSpaceInMB": "Integer",
  "minimumMemoryInMB": "Integer",
  "minimumNumberOfProcessors": "Integer",
  "minimumCpuSpeedInMHz": "Integer",
  "rules": [
    {
      "@odata.type": "microsoft.graph.win32LobAppRegistryRule"
    }
  ],
  "installExperience": {
    "@odata.type": "microsoft.graph.win32LobAppInstallExperience"
  },
  "returnCodes": [
    {
      "@odata.type": "microsoft.graph.win32LobAppReturnCode"
    }
  ],
  "msiInformation": {
    "@odata.type": "microsoft.graph.win32LobAppMsiInformation"
  },
  "setupFilePath": "String",
  "minimumSupportedWindowsRelease": "String"
}
```

