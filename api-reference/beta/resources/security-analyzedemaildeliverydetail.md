---
title: "analyzedEmailDeliveryDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# analyzedEmailDeliveryDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[deliveryAction](#deliveryaction-values)microsoft.graph.security.deliveryAction|**TODO: Add Description**.The possible values are: `unknown`, `deliveredToJunk`, `delivered`, `blocked`, `replaced`, `unknownFutureValue`.|
|location|[deliveryLocation](#deliverylocation-values)microsoft.graph.security.deliveryLocation|**TODO: Add Description**.The possible values are: `unknown`, `inbox_folder`, `junkFolder`, `deletedFolder`, `quarantine`, `onprem_external`, `failed`, `dropped`, `others`, `unknownFutureValue`.|

### deliveryAction values

|Member|
|:---|
|unknown|
|deliveredToJunk|
|delivered|
|blocked|
|replaced|
|unknownFutureValue|

### deliveryLocation values

|Member|
|:---|
|unknown|
|inbox_folder|
|junkFolder|
|deletedFolder|
|quarantine|
|onprem_external|
|failed|
|dropped|
|others|
|unknownFutureValue|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailDeliveryDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailDeliveryDetail",
  "action": "String",
  "location": "String"
}
```

