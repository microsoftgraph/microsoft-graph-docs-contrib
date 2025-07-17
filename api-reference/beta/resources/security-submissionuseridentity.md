---
title: "submissionUserIdentity resource type"
description: "Represents the identity of the user who sends the threat submission."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# submissionUserIdentity resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of the user who sends the threat submission.

Inherits from [identity](../resources/identity.md).

## Properties
| Property    | Type   | Description                                                                                                    |
|:------------|:-------|:---------------------------------------------------------------------------------------------------------------|
| displayName | String | Inherited from **identity**.                                                                 |
| email       | String | The email of user who is making the submission when logged in (delegated token case). | 
| id          | String | Inherited from **identity**.  |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

