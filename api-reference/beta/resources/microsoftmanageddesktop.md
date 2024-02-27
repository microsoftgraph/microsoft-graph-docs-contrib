---
title: "microsoftManagedDesktop resource type"
description: "Represents specific settings for the Microsoft Managed Desktop that enables customers to get a managed device experience for a Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# microsoftManagedDesktop resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for the Microsoft Managed Desktop that enables customers to get a managed device experience for a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|profile|String|The name of the Microsoft Managed Desktop profile that the Windows 365 Cloud PC is associated with.|
|managedType|[microsoftManagedDesktopType](#microsoftmanageddesktoptype-values)|Indicates the provisioning policy associated with Microsoft Managed Desktop settings. Possible values are: `notManaged`, `premiumManaged`, `standardManaged`, `starterManaged`, `unknownFutureValue`. The default value is `notManaged`.|
|type (deprecated)|[microsoftManagedDesktopType](#microsoftmanageddesktoptype-values)|Indicates whether the provisioning policy enables Microsoft Managed Desktop and, if enabled, specifies the type of plan managing the device. Possible values are: `notManaged`, `premiumManaged`, `standardManaged`, `starterManaged`, `unknownFutureValue`. The **type** property is deprecated and will stop returning data on January 31, 2024. Going forward, use the **managedType** property.|

### microsoftManagedDesktopType values

|Member|Description|
|:---|:---|
|notManaged|Microsoft Managed Desktop doesn't manage this device.|
|premiumManaged| Microsoft Managed Desktop premium plan manages this device.|
|standardManaged| Microsoft Managed Desktop standard plan manages this device.|
|starterManaged| Microsoft Managed Desktop starter plan manages this device.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftManagedDesktop"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.microsoftManagedDesktop",
  "managedType": "String",
  "profile": "String",
  "type": "String"
}
```
