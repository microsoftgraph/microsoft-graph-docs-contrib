---
title: "microsoftManagedDesktop resource type"
description: "Represents specific settings for the Microsoft Managed Desktop (MMD) which enables MMD customers to get device managed experience for a Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# microsoftManagedDesktop resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for the Microsoft Managed Desktop (MMD) which enables MMD customers to get device managed experience for a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|profile|String|Indicates the name of the Microsoft Managed Desktop profile that the Windows 365 Cloud PC is associated with.|
|type|[microsoftManagedDesktopType](#microsoftmanageddesktoptype-values)|Indicates if the provisioning policy enables MMD. If yes, it indicates the plan. Possible values are: `notManaged`, `premiumManaged`, `standardManaged`, `starterManaged`, `unknownFutureValue`.|

### microsoftManagedDesktopType values

|Member|Description|
|:---|:---|
|notManaged|The device is not managed by MMD.|
|premiumManaged|The device is managed by MMD premium plan.|
|standardManaged|The device is managed by MMD standard plan.|
|starterManaged|The device is managed by MMD starter plan.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftManagedDesktop"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.microsoftManagedDesktop",
  "type": "String",
  "profile": "String"
}
```
