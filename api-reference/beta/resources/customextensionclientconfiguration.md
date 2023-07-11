---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define how long Azure AD can wait for a response from an external app before it shuts down the connection"
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Connection settings that define how long Azure AD can wait for a a response from an external app before it shuts down the connection when trying to trigger the external app. Only **timeoutInMilliseconds** and **maximumRetries** are supported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeoutInMilliseconds|Int32|The max duration in milliseconds that Azure AD will wait for a response from the external app before it shuts down the connection. The valid range is between `200` and `2000` milliseconds. Default duration is `1000`.|
|maximumRetries|Int32|The max number of retries that Azure AD will make to the external API. Values of 0 or 1 are supported.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionClientConfiguration",
  "timeoutInMilliseconds": "Integer"
  "maximumRetries": "Integer"
}
```

