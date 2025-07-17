---
title: "customTaskExtensionCallbackData resource type"
description: "Represents the operation status that the logic app returns indicating whether or not the Logic App successfully ran on basis of that the taskProcessingResult processing status will be updated."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customTaskExtensionCallbackData resource type

Namespace: microsoft.graph.identityGovernance

Represents the operation status that the logic app returns as part of a [custom extension callout response](../resources/customextensioncalloutresponse.md) indicating whether or not the Logic App successfully ran on basis of that the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) processingStatus will be updated.

Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operationStatus|microsoft.graph.identityGovernance.customTaskExtensionOperationStatus|Operation status that's provided by the Azure Logic App indicating whenever the Azure Logic App has run successfully or not. Supported values: `completed`, `failed`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCallbackData",
  "baseType": "microsoft.graph.customExtensionData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCallbackData",
  "operationStatus": "String"
}
```
