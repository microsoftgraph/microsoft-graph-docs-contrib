---
title: "customAppManagementApplicationConfiguration resource type"
description: "Custom app management application configuration object that contains properties which can be configured to enable various restrictions specific to applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---


# customAppManagementApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom app management application configuration object that contains properties which can be configured to enable various restrictions specific to applications.

## Properties

| Property                | Type                              | Description                                     |
| :---------------------- | :-------------------------------- | :---------------------------------------------- |
| identifierUris          | [identifierUriConfiguration](identifieruriconfiguration.md)  | Configuration for identifierUris restriction |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppManagementApplicationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppManagementApplicationConfiguration",
  "identifierUris": {
    "@odata.type": "microsoft.graph.identifierUriConfiguration"
  }
}
```

