---
title: "directorySettingTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directorySettingTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List directorySettingTemplates](../api/directorysettingtemplate-list.md)|[directorySettingTemplate](../resources/directorysettingtemplate.md) collection|Get a list of the [directorySettingTemplate](../resources/directorysettingtemplate.md) objects and their properties.|
|[Create directorySettingTemplate](../api/directorysettingtemplate-post-directorysettingtemplates.md)|[directorySettingTemplate](../resources/directorysettingtemplate.md)|Create a new [directorySettingTemplate](../resources/directorysettingtemplate.md) object.|
|[Get directorySettingTemplate](../api/directorysettingtemplate-get.md)|[directorySettingTemplate](../resources/directorysettingtemplate.md)|Read the properties and relationships of a [directorySettingTemplate](../resources/directorysettingtemplate.md) object.|
|[Update directorySettingTemplate](../api/directorysettingtemplate-update.md)|[directorySettingTemplate](../resources/directorysettingtemplate.md)|Update the properties of a [directorySettingTemplate](../resources/directorysettingtemplate.md) object.|
|[Delete directorySettingTemplate](../api/directorysettingtemplate-delete.md)|None|Deletes a [directorySettingTemplate](../resources/directorysettingtemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|values|[settingTemplateValue](../resources/settingtemplatevalue.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directorySettingTemplate",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directorySettingTemplate",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "values": [
    {
      "@odata.type": "microsoft.graph.settingTemplateValue"
    }
  ]
}
```

