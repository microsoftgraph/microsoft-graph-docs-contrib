---
title: "educationSchool resource type"
description: "A resource representing a school and used to manage the classes, teachers, and students of the represented school.  "
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: School
ms.date: 06/19/2024
---

# educationSchool resource type

Namespace: microsoft.graph

A resource representing a school and used to manage the classes, teachers, and students of the represented school.

Inherits from [educationOrganization](../resources/educationorganization.md).

## Methods

| Method                                                     | Return type                                                   | Description                                                                                            |
| :--------------------------------------------------------- | :------------------------------------------------------------ | :----------------------------------------------------------------------------------------------------- |
| [List schools](../api/educationschool-list.md)    | [educationSchool](../resources/educationschool.md) collection | Get a list of the [educationSchool](../resources/educationschool.md) objects and their properties.     |
| [Create school](../api/educationschool-post.md) | [educationSchool](../resources/educationschool.md)            | Create a new [educationSchool](../resources/educationschool.md) object.                                |
| [Get school](../api/educationschool-get.md)       | [educationSchool](../resources/educationschool.md)            | Read the properties and relationships of an [educationSchool](../resources/educationschool.md) object. |
| [Update school](../api/educationschool-update.md) | [educationSchool](../resources/educationschool.md)            | Update the properties of an [educationSchool](../resources/educationschool.md) object.                 |
| [Delete school](../api/educationschool-delete.md) | None                                                          | Delete an [educationSchool](../resources/educationschool.md) object.                                  |
| [Get changes to schools](../api/educationschool-delta.md)                   | [educationSchool](../resources/educationschool.md) collection | Get incremental changes to the resource collection.                                                    |

## Properties

| Property             | Type                                               | Description                                                                                                                                                          |
| :------------------- | :------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| address              | [physicalAddress](../resources/physicaladdress.md) | Address of the school.                                                                                                                                               |
| createdBy            | [identitySet](../resources/identityset.md)         | Entity who created the school.                                                                                                                                       |
| description          | String                                             | Description of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                             |
| displayName          | String                                             | Display name of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                            |
| externalId           | String                                             | ID of school in syncing system.                                                                                                                                      |
| externalPrincipalId  | String                                             | ID of principal in syncing system.                                                                                                                                   |
| externalSource       | educationExternalSource                            | Source where this organization was created from. Inherited from [educationOrganization](../resources/educationorganization.md). Possible values are: `sis`, `manual`. |
| externalSourceDetail | String                                             | The name of the external source this resource was generated from.                                                                                                   |
| highestGrade         | String                                             | Highest grade taught.                                                                                                                                                |
| id                   | String                                             | Object identifier. Inherited from [entity](../resources/entity.md).                                                                                                   |
| lowestGrade          | String                                             | Lowest grade taught.                                                                                                                                                 |
| phone                | String                                             | Phone number of school.                                                                                                                                              |
| principalEmail       | String                                             | Email address of the principal.                                                                                                                                      |
| principalName        | String                                             | Name of the principal.                                                                                                                                               |
| schoolNumber         | String                                             | School Number.                                                                                                                                                       |

## Relationships

| Relationship       | Type                                                        | Description                                       |
| :----------------- | :---------------------------------------------------------- | :------------------------------------------------ |
| administrativeUnit | [administrativeUnit](../resources/administrativeunit.md)    | The underlying administrativeUnit for this school. |
| classes            | [educationClass](../resources/educationclass.md) collection | Classes taught at the school. Nullable.           |
| users              | [educationUser](../resources/educationuser.md) collection   | Users in the school. Nullable.                    |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationSchool",
  "baseType": "microsoft.graph.educationOrganization",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationSchool",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "externalPrincipalId": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "highestGrade": "String",
  "id": "String (identifier)",
  "lowestGrade": "String",
  "phone": "String",
  "principalEmail": "String",
  "principalName": "String",
  "schoolNumber": "String"
}
```
