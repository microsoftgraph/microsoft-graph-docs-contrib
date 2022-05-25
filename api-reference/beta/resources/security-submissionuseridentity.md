---
title: "submissionUserIdentity resource type"
description: "threat submission user identity"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionUserIdentity resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Threat submission user identity.


Inherits from graph.identity.

## Properties
| Property    | Type   | Description                                                                                                    |
|:------------|:-------|:---------------------------------------------------------------------------------------------------------------|
| id    | String | The field inherits from graph.identity.  |
| displayName | String | The field inherits from graph.identity.                                                                 |
| email       | String | The email of submission user for delegated token case.                                                         | 

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

