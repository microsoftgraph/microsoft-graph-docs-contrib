---
title: "educationIdentityCreationConfiguration resource type (deprecated)"
description: "Defines the settings on creation of school data profile identities. These identities include students and teachers. Based on these settings, the users will be created in the directory."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationIdentityCreationConfiguration resource type (deprecated)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Defines the settings on creation of school data profile identities. These identities include students and teachers. Based on these settings, the users will be created in the directory.

> [!WARNING]
> If you have directory sync turned on to sync between on-premises Active Directory and Microsoft Entra ID, use the [educationIdentityMatchingConfiguration](educationidentitymatchingconfiguration.md) resource instead.

Derived from [educationIdentitySynchronizationConfiguration](educationidentitysynchronizationconfiguration.md).

## Properties

| Property    | Type                                                             | Description                                    |
| :---------- | :--------------------------------------------------------------- | :--------------------------------------------- |
| userDomains | [educationIdentityDomain](educationidentitydomain.md) collection | Sets the list of domains to use per user type. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationIdentityCreationConfiguration"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationIdentityCreationConfiguration",
  "userDomains": [
    {
      "@odata.type": "microsoft.graph.educationIdentityDomain"
    }
  ]
}
```
