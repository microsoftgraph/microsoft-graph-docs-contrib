---
title: "engagementRole resource type"
description: "Represents the role management in Viva Engage which involves assigning and managing various administrative roles and corp comm role within the Viva Engage platform."
author: "richafnu"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md) collection|Get a list of the engagementRole objects and their properties.|
|[Create](../api/employeeexperienceuser-post-assignedroles.md)|[engagementRole](../resources/engagementrole.md)|Create a new engagementRole object.|
|[Get](../api/engagementrole-get.md)|[engagementRole](../resources/engagementrole.md)|Read the properties and relationships of an engagementRole object.|
|[Update](../api/engagementrole-update.md)|[engagementRole](../resources/engagementrole.md)|Update the properties of an engagementRole object.|
|[Delete](../api/employeeexperienceuser-delete-assignedroles.md)|None|Delete an engagementRole object.|
|[List members](../api/engagementrole-list-members.md)|[engagementRoleMember](../resources/engagementrolemember.md) collection|**TODO: Add a useful description.**|
|[Create engagementRoleMember](../api/engagementrole-post-members.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Create a new engagementRoleMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[engagementRoleMember](../resources/engagementrolemember.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRole",
  "id": "String (identifier)",
  "displayName": "String"
}
```

