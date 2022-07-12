---
author: lfernandez
description: The idleSessionSignOut resource groups together the idle session sign-out policy settings for SharePoint.
ms.date: 7/5/2022
title: idleSessionSignOut
ms.localizationpriority: medium
ms.prod: files
doc_type: resourcePageType
---

# Audio facet

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **idleSessionSignOut** resource groups together the idle session sign-out policy settings for SharePoint.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.tenantAdmin.idleSessionSignOut" } -->

```json
{
    "isEnabled": true,
    "signOutAfterInSeconds": 300,
    "warnAfterInSeconds": 10
}
```

## Properties

| Property              | Type    | Description                                                                                |
| :-------------------- | :------ | :----------------------------------------------------------------------------------------- |
| isEnabled             | boolean | Indicates whether idle sessions signout policy is enabled.                                 |
| warnAfterInSeconds    | long    | Number of seconds of inactivity after which a user is notified that they'll be signed out. |
| signOutAfterInSeconds | long    | Number of seconds of inactivity after which is a user is signed out.                       |

<!-- {
  "type": "#page.annotation",
  "description": "Idle session sign out paramters",
  "section": "documentation",
  "tocPath": "Resources/idleSessionSignOut"
} -->
