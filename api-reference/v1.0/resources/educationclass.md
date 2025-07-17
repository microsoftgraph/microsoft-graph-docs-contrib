---
title: "educationClass resource type"
description: "Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.  "
ms.localizationpriority: medium
author: "mlafleur"
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Class
ms.date: 09/11/2024
---

# educationClass resource type

Namespace: microsoft.graph

Represents a class within a school. The **educationClass** resource corresponds to the Microsoft 365 group and shares the same ID. Students are regular members of the class, and teachers are owners and have appropriate rights. For Office experiences to work correctly, teachers must be members of both the teachers and members collections.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                   | Return type                                                 | Description                                                                                          |
| :------------------------------------------------------- | :---------------------------------------------------------- | :--------------------------------------------------------------------------------------------------- |
| [List classes](../api/educationclass-list.md)   | [educationClass](../resources/educationclass.md) collection | Get a list of the [educationClass](../resources/educationclass.md) objects and their properties.     |
| [List modules](../api/educationclass-list-modules.md)    | [educationModule]collection  | Get an **educationModule** object collection.        |
| [Create class](../api/educationclass-post.md) | [educationClass](../resources/educationclass.md)            | Create a new [educationClass](../resources/educationclass.md) object.                                |
| [Get class](../api/educationclass-get.md)       | [educationClass](../resources/educationclass.md)            | Read the properties and relationships of an [educationClass](../resources/educationclass.md) object. |
| [Update class](../api/educationclass-update.md) | [educationClass](../resources/educationclass.md)            | Update the properties of an [educationClass](../resources/educationclass.md) object.                 |
| [Delete class](../api/educationclass-delete.md) | None                                                        | Delete an [educationClass](../resources/educationclass.md) object.                                  |
| [Get delta](../api/educationclass-delta.md)                  | [educationClass](educationclass.md) collection              | Get incremental changes for **educationClasses**.   
|[Get recently modified submissions](../api/educationclass-getrecentlymodifiedsubmissions.md)|[educationSubmission](../resources/educationsubmission.md) collection|Retrieve submissions modified in the previous seven days.|                     

## Properties

| Property             | Type                                           | Description                                                        |
| :------------------- | :--------------------------------------------- | :----------------------------------------------------------------- |
| classCode            | String                                         | Class code used by the school to identify the class.               |
| createdBy            | [identitySet](../resources/identityset.md)     | Entity who created the class                                       |
| description          | String                                         | Description of the class.                                          |
| displayName          | String                                         | Name of the class.                                                 |
| externalId           | String                                         | ID of the class from the syncing system.                           |
| externalSource       | educationExternalSource                        | How this class was created. Possible values are: `sis`, `manual`.  |
| externalSourceDetail | String                                         | The name of the external source this resource was generated from. |
| externalName         | String                                         | Name of the class in the syncing system.                           |
| grade                | String                                         | Grade level of the class.                                          |
| id                   | String                                         | Object identifier. Inherited from [entity](../resources/entity.md). |
| mailNickname         | String                                         | Mail name for sending email to all members, if this is enabled.    |
| term                 | [educationTerm](../resources/educationterm.md) | Term for this class.                                               |

## Relationships

| Relationship | Type                                                          | Description                                               |
| :----------- | :------------------------------------------------------------ | :-------------------------------------------------------- |
| assignments  | [educationAssignment](educationAssignment.md) collection | All assignments associated with this class. Nullable.     |
|assignmentCategories| [educationCategory](educationcategory.md) collection | All categories associated with this class. Nullable. |
|assignmentDefaults| [educationAssignmentDefaults](educationassignmentdefaults.md) collection | Specifies class-level defaults respected by new assignments created in the class. |
|assignmentSettings| [educationAssignmentSettings](educationassignmentsettings.md) collection | Specifies class-level assignments settings. |
| group        | [group](../resources/group.md)                                | The underlying Microsoft 365 group object.                |
| members      | [educationUser](../resources/educationuser.md) collection     | All users in the class. Nullable.                         |
| modules      | [educationModule] collection   | All modules in the class. Nullable. |
| schools      | [educationSchool](../resources/educationschool.md) collection | All schools that this class is associated with. Nullable. |
| teachers     | [educationUser](../resources/educationuser.md) collection     | All teachers in the class. Nullable.                      |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationClass",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationClass",
  "description": "String",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "classCode": "String",
  "externalName": "String",
  "externalId": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "grade": "String",
  "id": "String (identifier)",
  "mailNickname": "String",
  "term": {
    "@odata.type": "microsoft.graph.educationTerm"
  }
}
```

[educationmodule]: educationmodule.md
