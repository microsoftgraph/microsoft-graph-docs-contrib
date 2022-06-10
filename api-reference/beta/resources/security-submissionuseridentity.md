---
title: "submissionUserIdentity resource type"
description: "Represents threat submission user identity"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionUserIdentity resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat submission user identity.


Inherits from graph.identity.

## Properties
| Property    | Type   | Description                                                                                                    |
|:------------|:-------|:---------------------------------------------------------------------------------------------------------------|
| displayName | String | The field inherits from graph.identity.                                                                 |
| email       | String | The email of user who is making the submission when they are logged in (delegated token case). | 
| id          | String | The field inherits from graph.identity.  |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionUserIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionUserIdentity",
  "displayName": "String",
  "id": "String (identifier)",
  "email": "String"
}
```

