---
title: "blockFileResponseAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# blockFileResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceGroupNames|String collection|**TODO: Add Description**|
|identifier|microsoft.graph.security.fileEntityIdentifier|**TODO: Add Description**.The possible values are: `sha1`, `initiatingProcessSHA1`, `sha256`, `initiatingProcessSHA256`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.blockFileResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.blockFileResponseAction",
  "identifier": "String",
  "deviceGroupNames": [
    "String"
  ]
}
```

