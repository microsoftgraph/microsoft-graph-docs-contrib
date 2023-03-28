---
title: "idleSessionSignOut resource type"
description: "Represents the idle session sign-out policy settings for SharePoint."
author: "lfernandez"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# idleSessionSignOut resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the idle session sign-out policy settings for SharePoint.

## Properties

| Property              | Type     | Description                                                                               |
|:----------------------|:---------|:------------------------------------------------------------------------------------------|
| isEnabled             | Boolean  | Indicates whether the idle session sign-out policy is enabled.                            |
| signOutAfterInSeconds | Int64    | Number of seconds of inactivity after which a user is signed out.                         |
| warnAfterInSeconds    | Int64    | Number of seconds of inactivity after which a user is notified that they'll be signed out.|

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.idleSessionSignOut" } -->

```json
{
    "isEnabled": "Boolean",
    "signOutAfterInSeconds": "Int64",
    "warnAfterInSeconds": "Int64"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Idle session sign out parameters",
  "section": "documentation",
  "tocPath": "Resources/idleSessionSignOut"
} -->