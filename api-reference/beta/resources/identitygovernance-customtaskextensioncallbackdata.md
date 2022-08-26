---
title: "customTaskExtensionCallbackData resource type"
description: "Represents the operation status that the logic app returns indicating whether or not the Logic App successfully ran on basis of that the taskProcessingResult processing status will be updated."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtensionCallbackData resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that reports the status of the custom task extension callback data.

Inherits from [customExtensionData](../resources/identitygovernance-customTaskExtensionCallbackData.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operationStatus|String|Allow extension provided completion status of the corresponding extension. Supported values: `completed`, `failed`.|

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
  "operationStatus": "completed"
}
```
