---
title: "profileCardProperty resource type"
description: "Represents an attribute of a user on the Microsoft 365 profile card for an organization to surface in a shared, people experience."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardProperty resource type

Represents an attribute of a user on the Microsoft 365 profile card for an organization to surface in a shared, people experience.

The attribute can be an Microsoft Entra ID built-in attribute, such as **Alias** or **UserPrincipalName**, or it can be a custom attribute. For a custom attribute, an administrator can define an `en-us` default display name String and a set of alternative translations for the languages supported in their organization.

For more information about how to add properties to the profile card for an organization, see [Add or remove custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard).

[!INCLUDE [profilecardproperty-add-remove-note](../../../includes/profilecardproperty-add-remove-note.md)]

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [List profileCardProperties](../api/peopleadminsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. |
| [Create profileCardProperty](../api/peopleadminsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. |
| [Get profileCardProperty](../api/profilecardproperty-get.md) | [profileCardProperty](profilecardproperty.md) | Retrieve the properties of a [profileCardProperty](../resources/profilecardproperty.md) entity. |
| [Update profileCardProperty](../api/profilecardproperty-update.md)               | [profileCardProperty](profilecardproperty.md) | Update the properties of a [profileCardProperty](../resources/profilecardproperty.md) object, identified by its **directoryPropertyName** property.                               |
| [Delete profileCardProperty](../api/profilecardproperty-delete.md)               | None                                          | Delete the [profileCardProperty](../resources/profilecardproperty.md) object specified by its **directoryPropertyName** from the organization's profile card, and remove any localized customizations for that property.                               |

## Properties

| Property             | Type                                                        | Description |
|:---------------------|:------------------------------------------------------------|:------------|
|annotations           |[profileCardAnnotation](profilecardannotation.md) collection | Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.|
|directoryPropertyName |String                                                       | Identifies a **profileCardProperty** resource in [Get](../api/profilecardproperty-get.md), [Update](../api/profilecardproperty-update.md), or [Delete](../api/profilecardproperty-delete.md) operations. Allows an administrator to surface hidden Microsoft Entra ID properties on the Microsoft 365 profile card within their tenant. When present, the Microsoft Entra ID field referenced in this property is visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: `UserPrincipalName`, `Fax`, `StreetAddress`, `PostalCode`, `StateOrProvince`, `Alias`, `CustomAttribute1`,  `CustomAttribute2`, `CustomAttribute3`, `CustomAttribute4`, `CustomAttribute5`, `CustomAttribute6`, `CustomAttribute7`, `CustomAttribute8`, `CustomAttribute9`, `CustomAttribute10`, `CustomAttribute11`, `CustomAttribute12`, `CustomAttribute13`, `CustomAttribute14`, `CustomAttribute15`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileCardProperty"
}-->

```json
{
  "annotations": [{ "@odata.type": "microsoft.graph.profileCardAnnotation" }],
  "directoryPropertyName": "String"
}
```
