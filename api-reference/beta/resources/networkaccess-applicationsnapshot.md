---
title: "applicationSnapshot resource type"
description: "Represents details about the destination application accessed during a network transaction."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# applicationSnapshot resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about the destination application accessed during a network transaction.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The unique identifier of the application accessed during the transaction.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "appId",
  "@odata.type": "microsoft.graph.networkaccess.applicationSnapshot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.applicationSnapshot",
  "appId": "String"
}
```
