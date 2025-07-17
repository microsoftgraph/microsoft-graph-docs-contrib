---
title: "statusDetails resource type"
description: "Describes the status of the provisioning event and the associated errors."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 03/21/2024
---

# statusDetails resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
>[!CAUTION] 
> The statusDetails API is deprecated and will stop returning data om December 31, 2021. Please use the new [provisioningStatusInfo](provisioningstatusinfo.md) type.

Describes the status of the provisioning event and the associated errors. It's inherited from [statusBase](/graph/api/resources/statusbase) and only used when status is set to `failure`.  

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|status|statusBase|Possible values are: `success`, `warning`, `failure`, `skipped`, `unknownFutureValue`. Inherited from statusBase.|
|additionalDetails|String|Additional details if there is an error.|
|errorCategory|String|Categorizes the error code. Possible values are `Failure`, `NonServiceFailure`, `Success`.|
|errorCode|String|Unique error code if any occurred. [Learn more](/azure/active-directory/reports-monitoring/concept-provisioning-logs#error-codes)|
|reason|String|Summarizes the status and describes why the status happened.|
|recommendedAction|String|Provides the resolution for the corresponding error.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.statusDetails",
  "baseType": "microsoft.graph.statusBase"
}-->

```json
{
  "status": "failure",
  "additionalDetails": "String",
  "errorCategory": "String",
  "errorCode": "String",
  "reason": "String",
  "recommendedAction": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "statusDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


