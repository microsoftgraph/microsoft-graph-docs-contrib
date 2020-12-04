---
title: "userFlowLanguageConfiguration resource type"
description: "**TODO: Add Description**"
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userFlowLanguageConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-get.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Read the properties and relationships of a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object.|
|[Update userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-update.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md)|Update the properties of a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object.|
|[Delete userFlowLanguageConfiguration](../api/userflowlanguageconfiguration-delete.md)|None|Deletes a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object.|
|[List defaultPages](../api/userflowlanguageconfiguration-list-defaultpages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the defaultPages navigation property.|
|[List overridesPages](../api/userflowlanguageconfiguration-list-overridespages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|Get the userFlowLanguagePage resources from the overridesPages navigation property.|
|[Create overridesPages](../api/userflowlanguageconfiguration-post-overridespages.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md)|Create a new userFlowLanguagePage object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|defaultPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|**TODO: Add Description**|
|overridesPages|[userFlowLanguagePage](../resources/userflowlanguagepage.md) collection|**TODO: Add Description**|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userFlowLanguageConfiguration",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowLanguageConfiguration",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "displayName": "String"
}
```
