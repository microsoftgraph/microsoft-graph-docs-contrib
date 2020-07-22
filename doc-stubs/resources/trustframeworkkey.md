---
title: "trustFrameworkKey resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# trustFrameworkKey resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|d|String|**TODO: Add Description**|
|dp|String|**TODO: Add Description**|
|dq|String|**TODO: Add Description**|
|e|String|**TODO: Add Description**|
|exp|Int64|**TODO: Add Description**|
|k|String|**TODO: Add Description**|
|kid|String|**TODO: Add Description**|
|kty|String|**TODO: Add Description**|
|n|String|**TODO: Add Description**|
|nbf|Int64|**TODO: Add Description**|
|p|String|**TODO: Add Description**|
|q|String|**TODO: Add Description**|
|qi|String|**TODO: Add Description**|
|use|String|**TODO: Add Description**|
|x5c|String collection|**TODO: Add Description**|
|x5t|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trustFrameworkKey"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustFrameworkKey",
  "k": "String",
  "x5c": [
    "String"
  ],
  "x5t": "String",
  "kty": "String",
  "use": "String",
  "exp": "Integer",
  "nbf": "Integer",
  "kid": "String",
  "e": "String",
  "n": "String",
  "d": "String",
  "p": "String",
  "q": "String",
  "dp": "String",
  "dq": "String",
  "qi": "String"
}
```

