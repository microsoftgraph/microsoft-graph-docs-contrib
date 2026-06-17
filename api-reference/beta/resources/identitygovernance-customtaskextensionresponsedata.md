---
title: "customTaskExtensionResponseData resource type"
description: "Represents the data returned from custom task extensions in response to a callout."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customTaskExtensionResponseData resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data returned from [custom task extensions](../resources/identitygovernance-customtaskextension.md) in response to a callout from a lifecycle workflow.

Inherits from [customExtensionData](../resources/customextensiondata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operationStatus|microsoft.graph.identityGovernance.customTaskExtensionOperationStatus|The operation status reported by the custom task extension. The possible values are: `completed`, `failed`, `unknownFutureValue`.|
|statusReasons|String collection|A collection of status reason strings. May be empty.|
|targetSubject|[microsoft.graph.identityGovernance.workflowSubject](../resources/identitygovernance-workflowsubject.md)|The workflow subject that was processed by the custom task extension.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionResponseData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionResponseData",
  "operationStatus": "String",
  "targetSubject": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
  },
  "statusReasons": [
    "String"
  ]
}
```
