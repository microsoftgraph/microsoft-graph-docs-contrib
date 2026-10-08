---
title: "customAppManagementApplicationConfiguration resource type"
description: "Custom app management application configuration object that contains properties which can be configured to enable various restrictions specific to applications."
author: "antonvano"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 01/14/2026
---

# customAppManagementApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom app management application configuration object that contains properties which can be configured to enable various restrictions specific to application objects.

## Properties

| Property       | Type                                                        | Description                                   |
| :------------- | :---------------------------------------------------------- | :-------------------------------------------- |
| audiences      | [audiencesConfiguration](../resources/audiencesconfiguration.md)         | Property to restrict creation or update of apps based on their target **signInAudience** types.                             |
| identifierUris | [identifierUriConfiguration](identifieruriconfiguration.md) | Configuration for identifierUris restrictions.|
| redirectUris   | [redirectUriConfiguration](redirecturiconfiguration.md)     | Configuration for redirect URI validation rules and restrictions. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppManagementApplicationConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.customAppManagementApplicationConfiguration",
  "audiences": {
    "@odata.type": "microsoft.graph.audiencesConfiguration"
  },
  "identifierUris": {
    "@odata.type": "microsoft.graph.identifierUriConfiguration"
  },
  "redirectUris": {
    "@odata.type": "microsoft.graph.redirectUriConfiguration"
  }
}
```
