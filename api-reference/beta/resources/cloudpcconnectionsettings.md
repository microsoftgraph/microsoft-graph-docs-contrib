---
title: "cloudPcConnectionSettings resource type (deprecated)"
description: "The connection settings of a Cloud PC. Currently, only enableSingleSignOn is supported."
author: "doudoujinjin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/08/2025
---

# cloudPcConnectionSettings resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connection settings of a Cloud PC. Currently, only **enableSingleSignOn** is supported. IT admins can enable it by updating the provisioning policy and calling [applyConfig](../api/cloudpcprovisioningpolicy-applyconfig.md)/[apply](../api/cloudpcprovisioningpolicy-apply.md) API.

> [!NOTE]
> This resource type is deprecated and stopped returning data on August 31, 2024. Use [cloudPcConnectionSetting](../resources/cloudpcconnectionsetting.md) instead.

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
  "@odata.type": "microsoft.graph.cloudPcConnectionSettings",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcConnectionSettings",
  "enableSingleSignOn": false,
}
```

