---
title: "appManagementConfiguration resource type"
description: "App management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals."
author: "aricrowe57"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# appManagementConfiguration resource type

Namespace: microsoft.graph

App management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals.

## Properties

| Property            | Type                                                                  | Description                                                                                       |
| :------------------ | :-------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------ |
| passwordCredentials | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection | Collection of password restrictions settings to be applied to an application or service principal. |
| keyCredentials | [keyCredentialConfiguration](keyCredentialConfiguration.md) collection | Collection of keyCredential restrictions settings to be applied to an application or service principal. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.appManagementConfiguration",
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
    }
   ],
   "keyCredentials": [
    {
      "@odata.type": "microsoft.graph.keyCredentialConfiguration"
    }
   ]
}
```
