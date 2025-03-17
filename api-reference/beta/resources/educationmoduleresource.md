---
title: "educationModuleResource resource type"
description: "A wrapper object that stores the resources associated with a module."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Module resource
ms.date: 07/23/2024
---

# educationModuleResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A wrapper object that stores the resources associated with a module. The student won't be able to update this resource. This is a handout from the teacher to the student with nothing to be turned in.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List module resources](../api/educationmodule-list-resources.md) |[educationModuleResource](educationmoduleresource.md) collection| Get an **educationModuleResource** object collection.|
|[Create module resource](../api/educationmodule-post-resources.md) | [educationModuleResource](educationmoduleresource.md) |Create and return an **educationModuleResource** object.|
|[Get module resource](../api/educationmoduleresource-get.md) | [educationModuleResource](educationmoduleresource.md) |Read properties and relationships of an **educationModuleResource** object.|
|[Update module resource](../api/educationmoduleresource-update.md) | [educationModuleResource](educationmoduleresource.md) |Update an **educationModuleResource** object. |
|[Delete resource from module](../api/educationmoduleresource-delete.md) | None |Delete an **educationModuleResource** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| ID of this resource. Read-only.|
|resource|[educationResource](educationresource.md)|Resource object that has been associated with this module.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationModuleResource"
}-->

```json
{
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.educationResource"}
}

```
