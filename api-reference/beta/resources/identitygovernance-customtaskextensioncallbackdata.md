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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the operation status that the logic app returns as part of a [customExtensionCalloutResponse](../resources/customextensioncalloutresponse.md). This object is configured in the **data** property of that resource for callbacks from the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) resource.

Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operationStatus|microsoft.graph.identityGovernance.customTaskExtensionOperationStatus|Operation status that's provided by the Azure Logic App indicating whenever the Azure Logic App has run successfully or not. Supported values: `completed`, `failed`, `unknownFutureValue`.|
|targetSubject|[microsoft.graph.identityGovernance.workflowSubject](../resources/identitygovernance-workflowsubject.md)|The workflow subject that was processed and passed to the callback.|

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
  "operationStatus": "String",
  "targetSubject": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
  }
}
```
