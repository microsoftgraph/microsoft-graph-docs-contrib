---
title: "educationIdentityDomain resource type (deprecated)"
description: "Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the identity creation configuration. "
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationIdentityDomain resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Represents the mapping between an education user type and the domain the user's account belongs to. The domain resource is part of the [identity creation configuration](educationidentitycreationconfiguration.md).

## Properties

| Property  | Type   | Description                                                                                        |
| :-------- | :----- | :------------------------------------------------------------------------------------------------- |
| appliesTo | String | The user role type to assign to the license. Possible values are: `student`, `teacher`, `faculty`. |
| name      | String | Represents the domain for the user account.                                                        |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationIdentityDomain"
}-->

```json
{
  "appliesTo": { "@odata.type": "microsoft.graph.educationUserRole" },
  "name": "String"
}
```


