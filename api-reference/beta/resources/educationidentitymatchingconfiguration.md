---
title: "educationIdentityMatchingConfiguration resource type (deprecated)"
description: "Defines the settings for matching school data profile identities. These identities include students and teachers. Based on these settings, the users will be updated in the directory."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationIdentityMatchingConfiguration resource type (deprecated)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Defines the settings for matching school data profile identities. These identities include students and teachers. Based on these settings, the users will be updated in the directory.

> [!NOTE]
> No Users are created when this resource is selected.

## Properties

| Property        | Type                                                                                               | Description                                                                                      |
| :-------------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| matchingOptions | [microsoft.graph.educationIdentityMatchingOptions](educationidentitymatchingoptions.md) collection | Mapping between the user account and the options to use to uniquely identify the user to update. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationIdentityMatchingConfiguration"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationIdentityMatchingConfiguration",
  "matchingOptions": [
    {
      "appliesTo": { "@odata.type": "microsoft.graph.educationUserRole" },
      "sourcePropertyName": "String",
      "targetPropertyName": "String",
      "targetDomain": "String"
    }
  ]
}
```


