---
title: "educationModule resource type"
description: "Represents group or individual learning resources."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: resourcePageType
---

# educationModule resource type

Namespace: microsoft.graph

A module is associated with a [class](../resources/educationclass.md). Represents a group of individual learning resources that are organized in a systematic way.

Only teachers or team owners can create modules. Modules contain read-only learning resources and assignments the teacher wants the student to complete.

When a **module** is created, it is in a `draft` state. Students can't see the **module** until it's published. You can change the status of a **module** by using the [publish](../api/educationmodule-publish.md) action. You can't use a PATCH request to change the **module** status.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                                           | Return Type                                      | Description                                                                                  |
| :------------------------------------------------------------------------------- | :----------------------------------------------- | :------------------------------------------------------------------------------------------- |
| [List modules](../api/educationclass-list-modules.md)                            | [educationModule](educationmodule.md) collection | Get an **educationModule** object collection.                                                |
| [Create](../api/educationclass-post-module.md)                                   | [educationModule](educationmodule.md)            | Create an **educationModule** object.                                                        |
| [Get module](../api/educationmodule-get.md)                                      | [educationModule](educationmodule.md)            | Read properties and relationships of an **educationModule** object.                          |
| [Update](../api/educationmodule-update.md)                                       | [educationModule](educationmodule.md)            | Update an **educationModule** object.                                                        |
| [Delete](../api/educationmodule-delete.md)                                       | None                                             | Delete an **educationModule** object.                                                        |
| [Pin](../api/educationmodule-pin.md)                                             | [educationModule](educationmodule.md)            | Pin an **educationModule** object.                                                           |
| [Unpin](../api/educationmodule-unpin.md)                                         | [educationModule](educationmodule.md)            | Unpin an **educationModule** object.                                                         |
| [Publish](../api/educationmodule-publish.md)                                     | [educationModule](educationmodule.md)            | Change the state of an **educationModule** object from draft to published.                   |
| [Set up module resources folder](../api/educationmodule-setupresourcesfolder.md) | [educationModule](educationmodule.md)            | Create a SharePoint folder (under predefined location) to upload files as module resources. |

## Properties

| Property             | Type                          | Description                                                                                                                                                                                                         |
| :------------------- | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| createdBy            | [identitySet](identityset.md) | The display name of the user that created the **module**.                                                                                                                                                           |
| createdDateTime      | DateTimeOffset                | Date time the **module** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`       |
| description          | String                        | Description of the **module**.                                                                                                                                                                                      |
| displayName          | String                        | Name of the **module**.                                                                                                                                                                                             |
| id                   | String                        | The unique identifier for the **module**. Inherited from [entity](../resources/entity.md). Read-only.                                                                                                               |
| isPinned             | Boolean                       | Indicates whether the module is pinned or not.                                                                                                                                                                      |
| lastModifiedBy       | [identitySet](identityset.md) | The last user that modified the **module**.                                                                                                                                                                         |
| lastModifiedDateTime | DateTimeOffset                | Date time the **module** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z` |
| resourcesFolderUrl   | string                        | Folder URL where all the file resources for this **module** are stored.                                                                                                                                             |
| status               | string                        | Status of the **module**. You can't use a PATCH operation to update this value. Possible values are: `draft` and `published`.                                                                                       |

## Relationships

| Relationship | Type                                                             | Description                                                                                              |
| :----------- | :--------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------- |
| resources    | [educationModuleResource](educationmoduleresource.md) collection | Learning objects that are associated with this **module**. Only teachers can modify this list. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.educationModule"
}-->

```json
{
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isPinned": "Boolean",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "String (timestamp)",
  "resourcesFolderUrl": "String",
  "status": "String"
}
```
