---
title: "sensitivityLabel resource type"
toc.title: "sensitivityLabel (preview)"
description: "Represents metadata about a single Microsoft Purview sensitivity label, including cosmetic details and basic properties."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensitivityLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about a single Microsoft Purview sensitivity label, including cosmetic details and basic properties.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/datasecurityandgovernance-get-sensitivitylabels.md)|[sensitivityLabel](../resources/sensitivitylabel.md) collection|Get a list of the sensitivityLabel objects and their properties.|
|[computeInheritance](../api/sensitivitylabel-computeinheritance.md)|[sensitivityLabel](../resources/sensitivitylabel.md)|Calculate the sensitivity label that should be inherited|
|[computeRightsAndInheritance](../api/sensitivitylabel-computerightsandinheritance.md)|[computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md)|**TODO: Add Description**|
|[List usageRightsIncluded](../api/usagerightsincluded-get.md.md)|[usageRightsIncluded](../resources/usagerightsincluded.md) collection|**TODO: Add a useful description.**|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionSource|labelActionSource|This property might be part of specific responses like `computeInheritance` but typically not part of the base label definition.The possible values are: `manual`, `automatic`, `recommended`, `none`, `unknownFutureValue`.|
|applicableTo|sensitivityLabelTarget|The possible values are: `email`, `site`, `unifiedGroup`, `teamwork`, `unknownFutureValue`, `file`, `schematizedData`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this {evolvable enum}(/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `file` , `schematizedData`.|
|applicationMode|applicationMode|**TODO: Add Description**.The possible values are: `manual`, `automatic`, `recommended`.|
|assignedPolicies|[labelPolicy](../resources/labelpolicy.md) collection|**TODO: Add Description**|
|autoLabeling|[autoLabeling](../resources/autolabeling.md)|**TODO: Add Description**|
|autoTooltip|String|**TODO: Add Description**|
|color|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isDefault|Boolean|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|isEndpointProtectionEnabled|Boolean|**TODO: Add Description**|
|isScopedToUser|Boolean|**TODO: Add Description**|
|labelActions|[labelActionBase](../resources/labelactionbase.md) collection|**TODO: Add Description**|
|locale|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|priority|Int32|**TODO: Add Description**|
|toolTip|String|**TODO: Add Description**|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|rights|[usageRightsIncluded](../resources/usagerightsincluded.md)|**TODO: Add Description**|
|sublabels|[sensitivityLabel](../resources/sensitivitylabel.md) collection|**TODO: Add Description**|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sensitivityLabel",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitivityLabel",
  "id": "String (identifier)",
  "name": "String",
  "displayName": "String",
  "description": "String",
  "toolTip": "String",
  "isEnabled": "Boolean",
  "isEndpointProtectionEnabled": "Boolean",
  "isDefault": "Boolean",
  "applicationMode": "String",
  "labelActions": [
    {
      "@odata.type": "microsoft.graph.encryptWithUserDefinedRights"
    }
  ],
  "assignedPolicies": [
    {
      "@odata.type": "microsoft.graph.labelPolicy"
    }
  ],
  "priority": "Integer",
  "autoLabeling": {
    "@odata.type": "microsoft.graph.autoLabeling"
  },
  "applicableTo": "String",
  "color": "String",
  "autoTooltip": "String",
  "locale": "String",
  "isScopedToUser": "Boolean",
  "actionSource": "String"
}
```
