---
title: "microsoftManagedDesktop resource type"
description: "The specific settings to MicrosoftManagedDesktop which enables MMD customers to get device managed experience for Cloud PC."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# microsoftManagedDesktop resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The specific settings to MicrosoftManagedDesktop which enables MMD customers to get device managed experience for Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|profile|String|Indicate name of Microsoft Managed Desktop profile that Windows 365 Cloud PC is associated with.|
|type|[microsoftManagedDesktopType](#microsoftManagedDesktopType-values)|Indicate if the provisioning policy is to enable MMD. If yes, which plan. Possible values include notManaged, premiumManaged, standardManaged, starterManaged.|

### microsoftManagedDesktopType values

|Member|Description|
|:---|:---|
|notManaged|The device is not managed by MMD.|
|premiumManaged|The device is managed by MMD premium plan.|
|standardManaged|The device is managed by MMD standard plan.|
|starterManaged|The device is managed by MMD starter plan.|
|unknownFutureValue|Unknown future type.|

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
  "type": "StandardManaged",
  "profile": "Information Worker"
}
```
