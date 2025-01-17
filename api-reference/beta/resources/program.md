---
title: "program resource type (deprecated)"
description: "In the Microsoft Entra access reviews feature, a program is a container, holding program controls. A tenant can have one or more programs.  Each control links an access review to a program, to make it easier to locate related access reviews.  "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "shubhamguptacal"
ms.date: 08/21/2024
---

# program resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](accessreviews-root.md) feature, a program is a container, holding program controls. A tenant can have one or more programs. Each control links an access review to a program, to make it easier to locate related access reviews.  

A tenant that has onboarded Microsoft Entra access reviews has one program, the `Default program`. An authorized administrator can create more programs, for example, to represent compliance initiatives. 


## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[Create](../api/program-create.md) |    [program](program.md)    |    Create a new program.|
|[Delete](../api/program-delete.md) |    None.    |    Delete a program.|
|[List](../api/program-list.md) |    [program](program.md) collection|    Get a collection of all the programs.|
|[List controls](../api/program-listcontrols.md) |        [programControl](programcontrol.md) collection|    Get a collection of the controls of a program.|
|[Update](../api/program-update.md) |    [program](program.md)|    Update a program.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
| id                        |String                              |  The feature-assigned identifier of the program.                    |
| displayName               |String                              |  The name of the program.  Required on create.                  |
| description               |String                              |  The description of the program.           |

## Relationships
| Relationship | Type    |Description|
|:---------------|:--------|:----------|
| `controls`                  |[programControl](programcontrol.md) | Controls associated with the program. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.program"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "description": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "program resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
