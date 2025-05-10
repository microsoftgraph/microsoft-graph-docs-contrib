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
|[computeRightsAndInheritance](../api/sensitivitylabel-computerightsandinheritance.md)|[computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md)|Compute the rights and inheritance for the sensitivity label.|
|[List usageRightsIncluded](../api/usagerightsincluded-get.md.md)|[usageRightsIncluded](../resources/usagerightsincluded.md) collection|Get the usage rights granted to the calling user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| actionSource | microsoft.graph.security.labelActionSource | Indicates the source of the action that resulted in the label being applied. Possible values are: `manual`, `automatic`, `recommended`, `none`|
| applicableTo | microsoft.graph.security.sensitivityLabelTarget | Specifies the workloads where the label can be applied. Possible values: `email`, `site`, `unifiedGroup`, `teamwork`, `file`, `schematizedData`. |
| applicationMode | microsoft.graph.security.applicationMode | Specifies how the label should be applied or recommended. Possible values are: `manual`, `automatic`, `recommended`. |
| autoTooltip | String | The tooltip displayed to users for recommended or automatically applied labels. |
| color | String | The color associated with the label (for example, hex color code). |
| customSettings [keyValuePair](../resources/keyvaluepair.md) collection | Collection of custom settings defined for the label. |
| description | String | The description of the sensitivity label. |
| displayName | String | The display name of the sensitivity label. |
| id | String | The unique identifier for the sensitivity label. Read-only. |
| isDefault | Boolean | `true` if the label is the default label for the policy; `false` otherwise. |
| isEnabled | Boolean | `true` if the label is currently enabled; `false` otherwise. |
| isEndpointProtectionEnabled| Boolean | `true` if the label provides protection settings enforced by endpoint DLP; `false` otherwise. |
| isScopedToUser | Boolean | Indicates if the label is scoped to specific users or groups (`true`) or available to the entire tenant (`false`). |
| locale | String | The locale associated with the label's localized properties (for example, 'en-US'). Used in context of listing labels scoped to user/locale. |
| name | String | The unique, non-localized name of the sensitivity label. |
| priority | Int32 | The priority of the label. Lower numbers indicate higher priority. |
| toolTip | String | The tooltip displayed to users when they hover over the label in an application. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|rights|[usageRightsIncluded](../resources/usagerightsincluded.md)|Represents the usage rights (permissions) configured for the label, if any.|
|sublabels|[sensitivityLabel](../resources/sensitivitylabel.md) collection|The collection of sublabels associated with the label.|

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
  "priority": "Integer",
  "applicableTo": "String",
  "color": "String",
  "autoTooltip": "String",
  "locale": "String",
  "isScopedToUser": "Boolean",
  "actionSource": "String"
}
```
