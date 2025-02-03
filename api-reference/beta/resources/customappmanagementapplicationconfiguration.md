---
title: "customAppManagementApplicationConfiguration resource type"
description: "App management custom configuration object that contains properties which can be configured to enable various restrictions for applications and service principals."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: ""
doc_type: resourcePageType
---

# customAppManagementApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

App management custom configuration object that contains properties which can be configured to enable various restrictions for applications and service principals.

## Properties

| Property       | Type                                                                     | Description                                                                                                             |
| :------------- | :----------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| audiences      | [audiencesConfiguration](../resources/audiencesconfiguration.md)         | Property to restrict creation or update of apps based on their target signInAudience types.                             |
| identifierUris | [identifierUriConfiguration](../resources/identifieruriconfiguration.md) | Property to restrict custom URIs for applications. All but the 'default' URI of the format (api://{appId}) are blocked. |

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
