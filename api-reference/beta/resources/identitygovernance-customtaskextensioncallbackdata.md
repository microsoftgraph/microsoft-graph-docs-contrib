---
title: "customTaskExtensionCallbackData resource type"
description: "custom task extension call back data properties"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCallbackData resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that reports the status of the custom task extension callback data.

Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operationStatus|customTaskExtensionCallbackOperationStatus|The operation status of the Custom Task extension callback configuration call.The possible values are: `completed`, `failed`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCallbackData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCallbackData",
  "operationStatus": "String"
}
```
