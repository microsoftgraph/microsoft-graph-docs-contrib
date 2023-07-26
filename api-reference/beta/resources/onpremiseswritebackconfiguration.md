---
title: "onPremisesWritebackConfiguration resource type"
description: "Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesWritebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory.

## Properties

| Property              | Type   | Description                                                                                                                            |
| :-------------------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------- |
| unifiedGroupContainer | String | The distinguished name of the on-premises container that the customer is using to store unified groups which are created in the cloud. |
| userContainer         | String | The distinguished name of the on-premises container that the customer is using to store users which are created in the cloud.          |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesWritebackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesWritebackConfiguration",
  "unifiedGroupContainer": "String",
  "userContainer": "String"
}
```
