---
title: "onPremisesWritebackConfiguration resource type"
description: "Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory."
author: dhanyahk
ms.reviewer: damaiya,vifernan,awsdev
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 10/03/2024
---

# onPremisesWritebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration in the [onPremisesDirectorySynchronization resource](../resources/onpremisesdirectorysynchronization.md) to control how cloud created or owned objects are synchronized back to the on-premises directory.

## Properties

| Property              | Type   | Description                                                                                                                            |
| :-------------------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------- |
| unifiedGroupContainer | String | The distinguished name of the on-premises container that the customer is using to store unified groups which are created in the cloud. |
| userContainer         | String | The distinguished name of the on-premises container that the customer is using to store users which are created in the cloud.          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
