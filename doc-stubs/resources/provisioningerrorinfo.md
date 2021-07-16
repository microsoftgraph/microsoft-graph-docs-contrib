---
title: "provisioningErrorInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# provisioningErrorInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalDetails|String|**TODO: Add Description**|
|errorCategory|provisioningStatusErrorCategory|**TODO: Add Description**. Possible values are: `failure`, `nonServiceFailure`, `success`, `unknownFutureValue`.|
|errorCode|String|**TODO: Add Description**|
|reason|String|**TODO: Add Description**|
|recommendedAction|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provisioningErrorInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisioningErrorInfo",
  "errorCode": "String",
  "reason": "String",
  "additionalDetails": "String",
  "errorCategory": "String",
  "recommendedAction": "String"
}
```

