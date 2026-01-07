---
title: "policyRule resource type"
description: "An abstract data type for rules within policies."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 08/01/2024
---

# policyRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract data type for the following rules within policies:
- [forwardingRule](../resources/networkaccess-forwardingrule.md)
- [filteringRule](../resources/networkaccess-filteringrule.md)
- [threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md)

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get a list of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) objects and their properties.|
|[Get](../api/networkaccess-policyrule-get.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Get a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-privateaccessforwardingrule.md) object.|
|[Update](../api/networkaccess-policyrule-update.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Update the properties of a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.|
|[Get web category by URL](../api/networkaccess-connectivity-getwebcategorybyurl.md)|[microsoft.graph.networkaccess.webCategory](../resources/networkaccess-webcategory.md)|Check the web category of a given Uniform Resource Locator (URL).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the rule. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policyRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "id": "String (identifier)",
  "name": "String"
}
```

