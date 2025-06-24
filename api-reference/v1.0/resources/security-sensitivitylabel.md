---
title: "sensitivityLabel resource type"
description: "Describes the sensitivity protection label that details how to properly apply a sensitivity label to information."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# sensitivityLabel resource type

Namespace: microsoft.graph.security

Describes the information protection label that details how to properly apply a sensitivity label to information. 
  
## Methods

| Method                                                                                             | Return type                                                                                    | Description                                                                                                                                                            |
| :------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List](../api/tenantdatasecurityandgovernance-list-sensitivitylabels.md)                                   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                                                         | Get a list of the sensitivityLabel objects and their properties using the data security and governance API.                                                                                          |
| [Get](../api/sensitivitylabel-get.md)                                   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                                                         | Get a sensitivityLabel objects and it's properties using the data security and governance API.                                                                                          |
| [Compute inheritance](../api/sensitivitylabel-computeinheritance.md)               | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)                                  | Compute the inheritance for the sensitivity label and input content.                                                                |
| [Compute rights and inheritance](../api/sensitivitylabel-computerightsandinheritance.md)               | [computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md)                                  | Compute the rights and inheritance for the sensitivity label.                                                                |
| [List rights](../api/usagerightsincluded-get.md)                                       |[usageRightsIncluded](../resources/usagerightsincluded.md) collection                                                    | Get the usage rights granted to the calling user.                                                                                                                       |

## Properties

| Property       | Type              | Description                                                                                                |
| :------------- | :---------------- | :--------------------------------------------------------------------------------------------------------- |
| actionSource   | microsoft.graph.security.labelActionSource | Indicates the source of the action that resulted in the label being applied. Possible values are: `manual`, `automatic`, `recommended`, `none`.|
| autoLabeling   | [autoLabeling](../resources/autolabeling.md) | The auto-labeling configuration for the label.                                  |
| applicableTo   | microsoft.graph.security.sensitivityLabelTarget | Specifies the workloads where the label can be applied. Possible values: `email`, `site`, `unifiedGroup`, `teamwork`, `file`, `schematizedData`. |
| applicationMode | microsoft.graph.security.applicationMode | Specifies how the label should be applied or recommended. Possible values are: `manual`, `automatic`, `recommended`. |
| assignedPolicies | [labelPolicy](../resources/labelpolicy.md) collection | The collection of label policies that are assigned to the label. |
| autoTooltip    | String | The tooltip displayed to users for recommended or automatically applied labels. |
| color          | String            | The color that the UI should display for the label, if configured.                                         |
| contentFormats | String collection | Returns the supported content formats for the label.                                                       |
| description    | String            | The admin-defined description for the label.                                                               |
| displayName    | String            | The display name of the sensitivity label. |
| hasProtection  | Boolean           | Indicates whether the label has protection actions configured.                                             |
| id             | String            | The label ID is a globally unique identifier (GUID).                                                       |
| isActive       | Boolean           | Indicates whether the label is active or not. Active labels should be hidden or disabled in the UI.        |
| isAppliable    | Boolean           | Indicates whether the label can be applied to content. `False` if the label is a parent with child labels. |
| isDefault      | Boolean           | `true` if the label is the default label for the policy; `false` otherwise. |
| isEnabled      | Boolean           | `true` if the label is currently enabled; `false` otherwise. |
| isEndpointProtectionEnabled | Boolean | `true` if the label provides protection settings enforced by endpoint Data Loss Prevention; `false` otherwise. |
| isScopedToUser | Boolean           | Indicates if the label is scoped to specific users or groups (`true`) or available to the entire tenant (`false`). |
| labelActions   | [labelActionBase](../resources/labelactionbase.md) collection | The actions that are associated with the label.                                                                 |
| locale         | String | The locale associated with the label's localized properties (for example, 'en-US'). Used in context of listing labels scoped to user/locale. |
| name           | String            | The plaintext name of the label.                                                                           |
| priority       | Int32             | The priority of the label. Lower numbers indicate higher priority. |
| sensitivity    | Int32             | The sensitivity value of the label, where lower is less sensitive.                                         |
| tooltip        | String            | The tooltip that should be displayed for the label in a UI.                                                |

## Relationships

| Relationship | Type                                                          | Description                                                                        |
| :----------- | :------------------------------------------------------------ | :--------------------------------------------------------------------------------- |
| rights       | [usageRightsIncluded](../resources/usagerightsincluded.md)    | Represents the usage rights (permissions) configured for the label, if any.|
| sublabels    | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection| The collection of sublabels associated with the label.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensitivityLabel",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensitivityLabel",
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

