---
title: "messageSecurityState resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# messageSecurityState resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectingIP|String|**TODO: Add Description**|
|deliveryAction|String|**TODO: Add Description**|
|deliveryLocation|String|**TODO: Add Description**|
|directionality|String|**TODO: Add Description**|
|internetMessageId|String|**TODO: Add Description**|
|messageFingerprint|String|**TODO: Add Description**|
|messageReceivedDateTime|DateTimeOffset|**TODO: Add Description**|
|messageSubject|String|**TODO: Add Description**|
|networkMessageId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.messageSecurityState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageSecurityState",
  "connectingIP": "String",
  "directionality": "String",
  "deliveryAction": "String",
  "deliveryLocation": "String",
  "internetMessageId": "String",
  "messageReceivedDateTime": "String (timestamp)",
  "messageSubject": "String",
  "messageFingerprint": "String",
  "networkMessageId": "String"
}
```

