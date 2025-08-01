---
title: "customAppManagementApplicationConfiguration resource type"
description: "Custom app management application configuration object that contains properties which can be configured to enable various restrictions specific to applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/13/2024
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
  }
}
```
