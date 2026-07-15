---
title: "caseManagementEntity resource type"
description: "Represents common metadata for case management resources."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# caseManagementEntity resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents common metadata for case management resources.
This is an abstract type.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource.|
|createdDateTime|DateTimeOffset|The date and time when the resource was created.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.caseManagementEntity",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String"
}
```
