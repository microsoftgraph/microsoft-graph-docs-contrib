---
title: "cloudPcConnectionSetting resource type"
description: "The connection setting of a Cloud PC. Currently, only enableSinleSignOn is supported. IT admin could enable it through updating provisioning policy and calling applyConfig/apply API."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcConnectionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connection setting of a Cloud PC. Currently, only enableSinleSignOn is supported. IT admin could enable it through updating provisioning policy and calling applyConfig/apply API.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|enableSingleSignOn|Boolean|When `true`, indicates the single sign on is enabled. When `false` indicates single sign on is disabled. default value is `false`.|

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
