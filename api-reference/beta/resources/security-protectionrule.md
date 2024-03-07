---
title: "protectionRule resource type"
description: "Represents a rule, which contains basic properties such as ID, name, and so on."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectionRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a rule, which contains basic properties such as ID, name, and so on.
This type is abstract.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
| Property             | Type           | Description                                            |
|:---------------------|:---------------|:-------------------------------------------------------|
| createdBy            | String         | Name of the user or application that created the rule. |
| createdDateTime      | DateTimeOffset | Timestamp of rule creation.                            |
| displayName          | String         | Name of the rule.                                      |
| id                   | String         | Unique identifier to represent the rule.               |
| isEnabled            | Boolean        | Whether rule is turned on for the tenant.              |
| lastModifiedBy       | String         | Name of the user or application who last updated the rule. |
| lastModifiedDateTime | DateTimeOffset | Timestamp of when the rule was last updated.           |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

