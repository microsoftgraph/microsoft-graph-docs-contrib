---
title: "auditActivityInitiator resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# auditActivityInitiator resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|app|[appIdentity](../resources/appidentity.md)|**TODO: Add Description**|
|user|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditActivityInitiator"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActivityInitiator",
  "user": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "app": {
    "@odata.type": "microsoft.graph.appIdentity"
  }
}
```

