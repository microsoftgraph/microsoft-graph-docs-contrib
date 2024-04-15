---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection. Only timeoutInMilliseconds is supported."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection when trying to trigger the external app. Only **timeoutInMilliseconds** is supported.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutInMilliseconds|Int32|The max duration in milliseconds that Microsoft Entra ID waits for a response from the external app before it shuts down the connection. The valid range is between `200` and `2000` milliseconds. Default duration is `1000`.|

## Relationships


None.

## JSON representation


The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionClientConfiguration",
  "timeoutInMilliseconds": "Integer"
}
```
