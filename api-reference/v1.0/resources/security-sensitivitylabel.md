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
| [Get](../api/sensitivitylabel-get.md)                                   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                                                         | Get a sensitivityLabel object and its properties using the data security and governance API.                                                                                          |
| [Compute inheritance](../api/sensitivitylabel-computeinheritance.md)               | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)                                  | Compute the inheritance for the sensitivity label and input content.                                                                |
| [Compute rights and inheritance](../api/sensitivitylabel-computerightsandinheritance.md)               | [computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md)                                  | Compute the rights and inheritance for the sensitivity label.                                                                |
| [Get usage rights included](../api/usagerightsincluded-get.md)                                       |[usageRightsIncluded](../resources/usagerightsincluded.md) collection                                                    | Get the usage rights granted to the calling user.                                                                                                                       |

## Properties

| Property       | Type              | Description                                                                                                |
| :------------- | :---------------- | :--------------------------------------------------------------------------------------------------------- |
| actionSource   | microsoft.graph.security.labelActionSource | Indicates the source of the action that resulted in the label being applied. Possible values are: `manual`, `automatic`, `recommended`, `none`.|
| applicableTo   | microsoft.graph.security.sensitivityLabelTarget | Specifies the workloads where the label can be applied. Possible values: `email`, `site`, `unifiedGroup`, `teamwork`, `file`, `schematizedData`. |
| applicationMode | microsoft.graph.security.applicationMode | Specifies how the label should be applied or recommended. Possible values are: `manual`, `automatic`, `recommended`. |
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
| locale         | String | The locale associated with the label's localized properties (for example, 'en-US'). Used in the context of listing labels scoped to user/locale. |
| name           | String            | The plaintext name of the label.                                                                           |
| priority       | Int32             | The priority of the label. Lower numbers indicate higher priority. |
| sensitivity    | Int32             | The sensitivity value of the label, where lower is less sensitive.                                         |
| tooltip        | String            | The tooltip that should be displayed for the label in a UI.                                                |

## Sensitivity Label API Filtering Rules

This section outlines the filtering rules and constraints for various Sensitivity Label APIs.

### Scenario 1: SensitivityLabel APIs (/ and /id)

#### Rules

1. **OR Restriction with scopeToUser**
   - If `scopeToUser` filter parameter is present, then `or` is not allowed in the filter parameters

2. **Prefiltering Behavior with OR**
   - If `or` is present in the filter parameters, then `locale` and `contentFormats` filter parameters (if present) will not be used for prefiltering

3. **Inner OR Exception**
   - Inner `or` operations that fall under the parameter tree are permitted

### Scenario 2: SensitivityLabelAndRights APIs expand=Rights (/ and /id) - Single ID

#### Rules

1. **OR Restriction with Multiple Parameters**
   - If any of the following filter parameters are present: `scopeToUser`, `id`, or `ownerEmail`, then `or` is not allowed in the filter parameters

2. **ownerEmail Validation**
   - `ownerEmail` present without `id` will throw `ArgumentException`

3. **Prefiltering Behavior with OR**
   - If `or` is present in the filter parameters, then `locale` and `contentFormats` filter parameters (if present) will not be used for prefiltering

4. **Inner OR Exception**
   - Inner `or` operations that fall under the parameter tree are permitted

### Scenario 2.5: SensitivityLabel And Rights APIs expand=Rights (/ and /id) - Multiple IDs

#### Supported Pattern

This API supports the following specific filtering pattern:

```odata
$filter=(id in ('guid1', 'guid2')) or ((id eq 'guid3' and rights/ownerEmail eq 'ownerEmail1') or (id eq 'guid4') or (id eq 'guid5' and rights/ownerEmail eq 'ownerEmail2') or (id eq 'guid6'))
```

#### Rules

1. **Strict OR Pattern**
   - Only the pattern shown above is supported for `or` operations
   - Any other `or` usage with this API will result in `ArgumentException`

2. **Inner OR Exception**
   - Inner `or` operations that fall under the parameter tree are permitted

### Scenario 3: SensitivityLabel Rights /id/rights

#### Rules

1. **OR Restriction with ownerEmail**
   - `or` operations with filter parameter `ownerEmail` will result in an exception

2. **Inner OR Exception**
   - Inner `or` operations that fall under the parameter tree are permitted

### isScopedToUser Parameter Rules

This section outlines the behavior and constraints for the `isScopedToUser` parameter in sensitivity label APIs.

#### Parameter Behavior

##### isScopedToUser = true
- **Result**: Shows enabled labels only
- **Use Case**: Standard filtering for active/enabled labels
- **Status**: Recommended usage

##### isScopedToUser = false
- **Result**: Shows disabled labels only
- **Use Case**: Limited - ideally not used with this value
- **Status**: Not recommended for typical operations

##### isScopedToUser not passed
- **Result**: Shows all labels (both enabled and disabled)
- **Use Case**: Comprehensive label retrieval
- **Status**: Default behavior when parameter is omitted

#### Restrictions

##### Tenant Labels Exception
- **Behavior**: When getting tenant labels, using `isScopedToUser` will throw `ArgumentException`
- **Reason**: Parameter is not applicable for tenant-level label operations
- **Solution**: Omit the `isScopedToUser` parameter when working with tenant labels

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
  "priority": "Integer",
  "applicableTo": "String",
  "color": "String",
  "autoTooltip": "String",
  "locale": "String",
  "isScopedToUser": "Boolean",
  "actionSource": "String"
}
```

