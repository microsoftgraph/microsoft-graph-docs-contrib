---
title: "isolateDeviceResponseAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# isolateDeviceResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifier|microsoft.graph.security.deviceIdEntityIdentifier|**TODO: Add Description**.The possible values are: `deviceId`, `unknownFutureValue`.|
|isolationType|microsoft.graph.security.isolationType|**TODO: Add Description**.The possible values are: `full`, `selective`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.isolateDeviceResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
  "identifier": "String",
  "isolationType": "String"
}
```

