---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection. Only timeoutInMilliseconds is supported."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection when trying to trigger the external app.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutInMilliseconds|Int32|The max duration in milliseconds that Microsoft Entra ID waits for a response from the external app before it shuts down the connection. The valid range is between `200` and `2000` milliseconds. Default duration is `1000`.|
|maximumRetries|Int32|The max number of retries that Microsoft Entra ID makes to the external API. Values of 0 or 1 are supported. If `null`, the default for the service applies.|

## Relationships


None.

## JSON representation


Here's a JSON representation of the resource.
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
