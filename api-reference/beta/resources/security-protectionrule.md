---
title: "protectionRule resource type"
description: "Represents an abstract rule, which contains basic properties like ID, name, etc."
author: "mmekler"
ms.localizationpriority: medium
ROBOTS: NOINDEX
ms.prod: "security"
doc_type: resourcePageType
---

# protectionRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract rule, which contains basic properties like ID, name, etc.
This is an abstract type.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
| Property             | Type           | Description                                            |
|:---------------------|:---------------|:-------------------------------------------------------|
| createdBy            | String         | Name of the user or application that created the rule. |
| createdDateTime      | DateTimeOffset | Timestamp of rule creation.                            |
| displayName          | String         | Name of the rule.                                      |
| id                   | String         | Unique identifier to represent the rule.               |
| isEnabled            | Boolean        | Indicates whether rule is turned on for the tenant.    |
| lastModifiedBy       | String         | Name of user or application who last updated the rule. |
| lastModifiedDateTime | DateTimeOffset | Timestamp of when the rule was last updated.           |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.protectionRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.protectionRule",
  "id": "String (identifier)",
  "displayName": "String",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String"
}
```

