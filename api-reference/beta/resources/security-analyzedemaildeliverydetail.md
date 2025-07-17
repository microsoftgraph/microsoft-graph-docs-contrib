---
title: "analyzedEmailDeliveryDetail resource type"
description: Represents the delivery action and location of an analyzed email.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# analyzedEmailDeliveryDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the delivery action and location of an [analzed email](security-analyzedemail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.deliveryAction](#deliveryaction-values)|The delivery action of the email. The possible values are: `unknown`, `deliveredToJunk`, `delivered`, `blocked`, `replaced`, `unknownFutureValue`.|
|location|[microsoft.graph.security.deliveryLocation](#deliverylocation-values)|The delivery location of the email. The possible values are: `unknown`, `inbox_folder`, `junkFolder`, `deletedFolder`, `quarantine`, `onprem_external`, `failed`, `dropped`, `others`, `unknownFutureValue`.|
|latestThreats|String|Latest known threat on the email.|
|originalThreats|String|Threats identified at the time of delivery.|

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
  "location": "String",
  "originalThreats": "String",
  "latestThreats": "String"
}
```

