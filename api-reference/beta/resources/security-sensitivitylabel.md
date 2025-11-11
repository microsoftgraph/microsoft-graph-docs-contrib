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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the information protection label that details how to properly apply a sensitivity label to information. The **informationProtectionLabel** resource describes the configuration of sensitivity labels that apply to a user or tenant.
  
## Methods

| Method                                                                                             | Return type                                                                                    | Description                                                                                                                                                            |
| :------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List](../api/security-informationprotection-list-sensitivitylabels.md)                             | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                       | Get a list of the [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) objects and their properties.                               |
| [Get](../api/security-sensitivitylabel-get.md)                                                      | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)                                  | Read the properties and relationships of a [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) object.                       |
| [Compute inheritance](../api/sensitivitylabel-computeinheritance.md)               | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)                                  | Compute the inheritance for the sensitivity label and input content.                                                                |
| [Compute rights and inheritance](../api/sensitivitylabel-computerightsandinheritance.md)               | [computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md)                                  | Compute the rights and inheritance for the sensitivity label.                                                                |
| [Evaluate application](../api/security-sensitivitylabel-evaluateapplication.md)                     | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection | Given an input of [contentInfo](contentinfo.md) and [labelingOptions](labelingoptions.md), compute the set of actions required to apply the label.                     |
| [Evaluate classification result](../api/security-sensitivitylabel-evaluateclassificationresults.md) | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection | Given an input of [contentInfo](contentinfo.md) and classification results, compute the set of actions required to apply the label.                                    |
| [Evaluate removal](../api/security-sensitivitylabel-evaluateremoval.md)                             | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [downgradeJustification](downgradejustification.md), compute the actions that should be taken to remove the label. |
| [Extract content label](../api/security-sensitivitylabel-extractcontentlabel.md)                    | [microsoft.graph.security.contentLabel](../resources/security-contentlabel.md)                                          | Given an input of [contentInfo](contentinfo.md), return details on the [informationProtectionLabel](informationprotectionlabel.md) that the metadata represents.       |
| [List data security and compliance sensitivity labels](../api/tenantdatasecurityandgovernance-list-sensitivitylabels.md)                                   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                                                         | Get a list of the sensitivityLabel objects and their properties using the data security and governance API.                                                                                          |
| [Get a data security and compliance sensitivity label](../api/sensitivitylabel-get.md)                                   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                                                         | Get a sensitivityLabel object and its properties using the data security and governance API.                                                                                          |
| [Get usage rights included](../api/usagerightsincluded-get.md)                                       |[usageRightsIncluded](../resources/usagerightsincluded.md) collection                                                    | Get the usage rights granted to the calling user.                                                                                                                       |

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
| locale         | String | The locale associated with the label's localized properties (for example, 'en-US'). Used in the context of listing labels scoped to user/locale. |
| name           | String            | The plaintext name of the label.                                                                           |
| priority       | Int32             | The priority of the label. Lower numbers indicate higher priority. |
| sensitivity    | Int32             | The sensitivity value of the label, where lower is less sensitive.                                         |
| tooltip        | String            | The tooltip that should be displayed for the label in a UI.                                                |

## Sensitivity label API filtering rules

This section outlines the filtering rules and constraints available to apply to various sensitivity label API calls.

### Scenario 1: Return sensitivity labels (1 or more) 
The user calls the API and filters by one or more label ID GUIDs.

#### Example
   ``` odata
   $filter=((id eq 'guid1') or (id eq 'guid2') or (id eq 'guid3'))
   ```

#### Rules

1. **OR restriction with isScopedToUser**
   - If `isScopedToUser` filter parameter is present, then `or` is not allowed in the filter parameters

2. **Prefiltering behavior with OR**
   - If `or` is present in the filter parameters, then `locale` and `contentFormats` filter parameters (if present) won't be used for prefiltering

3. **Inner OR exception**
   - Inner `or` operations that fall under the parameter tree are permitted

### Scenario 2: Return results for sensitivity labels using a filter on a single ID and user right

The user calls the API and filters by one label ID GUID and one user right.

#### Example
   ``` odata
   $filter=(id eq 'guid1' and ownerEmail eq 'ownerEmail1')
   ```

#### Rules

1. **OR restriction with multiple parameters**
   - If any of the following filter parameters are present: `isScopedToUser`, `id`, or `ownerEmail`, then `or` isn't allowed in the filter parameters

2. **ownerEmail validation**
   - `ownerEmail` present without `id` throws an `ArgumentException`.

3. **Prefiltering behavior with OR**
   - If `or` is present in the $filter string, then `locale` and `contentFormats` filter parameters are ignored and not used to prefilter the results.

4. **Inner OR exception**
   - You can use inner `or` operations between individual clauses.

### Scenario 2.5: Return results for sensitivity labels using a filter for multiple IDs and user rights

   The user wants to call the API and filter by multiple IDs and ownerEmail. To achieve this outcome, you must combine both the label ID and ownerEmail in one boolean clause.

#### Example
   ``` odata
   $filter=(
      (id eq 'guid1' and ownerEmail eq 'ownerEmail1')
     or (id eq 'guid2')
     or (id eq 'guid3' and ownerEmail eq 'ownerEmail2')
   )
   ```

This `$filter` pattern is an extension to the standard OData specification. In standard OData, combining multiple tuples with `or` in this way is not typically supported. However, this API allows you to use a tuple-based OR pattern, where each `(id, ownerEmail)` pair is evaluated independently, and the resulting rights information is merged. For more information about standard OData `$filter` behavior, see the [OData specification](https://www.odata.org/documentation/odata-version-2-0/uri-conventions/#FilterSystemQueryOption).

We recommend using filters that use a single call with multiple IDs to retrieve rights for multiple labels because it reduces the number of API calls you need to make from your app.

`ownerEmail` is optional and can be omitted to fetch label-level rights only.


#### Rules

1. **Strict OR pattern**

   - Only the tuple-based structure combined by OR operations as shown above is supported.

   - Any other combination of OR operations or mixing unrelated filters aren't allowed and results in an ArgumentException.

2. **ownerEmail validation**

   - `ownerEmail` must always appear together with an `id`. Using `ownerEmail` alone results in an `ArgumentException`.


3. **Inner OR exception**

   - You can combine clauses using subclauses. Here's an example of a subclause: (id eq 'guid1' and ownerEmail eq 'ownerEmail1')

   - In this example, there are three subclauses. When combining the ID and ownerEmail, use AND in the subclause. Don't use OR otherwise it throws an exception.


4. **Prefiltering behavior**

   - When `or` is used, the `locale` and `contentFormats` parameters (if provided) are ignored for prefiltering.

#### Behavior summary

| Case                  | Example                                                                                                                                         | Description                                                                                                      |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| Label ID only         | `(id eq 'guid1')`                                                                                                                               | Returns rights defined on the label.                                                                             |
| Label ID + ownerEmail | `(id eq 'guid1' and ownerEmail eq 'ownerEmail1')`                                                                                               | Evaluates rights for the specified user.                                                                         |
| Multiple tuples       | `(id eq 'guid1' and ownerEmail eq 'ownerEmail1') or (id eq 'guid2') or (id eq 'guid3' and ownerEmail eq 'ownerEmail2')`           | Combine conditions with **OR**. Returns a merged list of labels and rights for all matched labels and users.     |



### Scenario 3: Sensitivity label rights /id/rights

#### Rules

1. **OR restriction with ownerEmail**
   - `or` operations with filter parameter `ownerEmail` results in an exception.

2. **Inner OR exception**
   - Inner `or` operations that fall under the parameter tree are permitted.

### isScopedToUser parameter rules

This section outlines the behavior and constraints for the `isScopedToUser` parameter in sensitivity label APIs.

#### Parameter behavior

##### isScopedToUser = true
- **Result**: Shows enabled labels only
- **Use case**: Standard filtering for active/enabled labels
- **Status**: Recommended usage

##### isScopedToUser = false
- **Result**: Shows disabled labels only
- **Use case**: Limited - ideally not used with this value
- **Status**: Not recommended for typical operations

##### isScopedToUser not passed
- **Result**: Shows all labels (both enabled and disabled)
- **Use case**: Comprehensive label retrieval
- **Status**: Default behavior when parameter is omitted

#### Restrictions

##### Tenant labels exception
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

