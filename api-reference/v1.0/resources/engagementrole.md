---
title: "engagementRole resource type"
description: "Represents a predefined Viva Engage role."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRole resource type

Namespace: microsoft.graph

Represents a predefined Viva Engage role. Each role includes a unique identifier and display name and can be assigned to one or more users within the platform.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/employeeexperience-list-roles.md)|[engagementRole](../resources/engagementrole.md) collection|Get the static list of the assignable roles in Viva Engage.|
|[List](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md)|Get a list of  Viva Engage roles assigned to a user or a signed-in user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the role.|
|id|String|The unique identifier of the role. Read-only. Inherits from [entity](../resources/entity.md)|

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
