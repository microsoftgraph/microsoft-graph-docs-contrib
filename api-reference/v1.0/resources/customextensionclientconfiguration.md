---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define how long Azure AD can wait for a response from an external app before it shuts down the connection. Only timeoutInMilliseconds is supported."
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

Connection settings that define how long Azure AD can wait for a a response from an external app before it shuts down the connection when trying to trigger the external app. Only **timeoutInMilliseconds** is supported.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutInMilliseconds|Int32|The max duration in milliseconds that Azure AD will wait for a response from the external app before it shuts down the connection. The valid range is between `200` and `2000` milliseconds. Default duration is `1000`.|

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
}
```

