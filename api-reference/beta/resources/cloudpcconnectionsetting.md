---
title: "cloudPcConnectionSetting resource type"
description: "The connection setting of a Cloud PC. Currently, only enableSingleSignOn is supported."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/20/2024
---

# cloudPcConnectionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connection setting of a Cloud PC. Currently, only **enableSingleSignOn** is supported. IT admins can enable it by updating the provisioning policy and calling [applyConfig](../api/cloudpcprovisioningpolicy-applyconfig.md)/[apply](../api/cloudpcprovisioningpolicy-apply.md) API.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|enableSingleSignOn|Boolean|Indicates whether single sign-on is enabled. The default value is `false`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcConnectionSetting",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcConnectionSetting",
  "enableSingleSignOn": "false",
}
```
