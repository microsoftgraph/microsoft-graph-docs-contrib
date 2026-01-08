---
title: "groupPolicyCategory resource type"
description: "The category entity stores the category of a group policy definition"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyCategory resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The category entity stores the category of a group policy definition

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get groupPolicyCategory](../api/intune-grouppolicy-grouppolicycategory-get.md)|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|Read properties and relationships of the [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md) object.|
|[Update groupPolicyCategory](../api/intune-grouppolicy-grouppolicycategory-update.md)|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|Update the properties of a [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The string id of the category's display name|
|isRoot|Boolean|Defines if the category is a root category|
|ingestionSource|[ingestionSource](../resources/intune-grouppolicy-ingestionsource.md)|Defines this category's ingestion source (0 - unknown, 1 - custom, 2 - global). The possible values are: `unknown`, `custom`, `builtIn`, `unknownFutureValue`.|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|parent|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|The parent category|
|children|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md) collection|The children categories|
|definitions|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md) collection|The immediate GroupPolicyDefinition children of the category|
|definitionFile|[groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|The id of the definition file the category came from|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyCategory",
  "displayName": "String",
  "isRoot": true,
  "ingestionSource": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```