---
title: "verifiedIdUsageConfiguration resource type"
description: "Configuration defining the usage capability of a Verified ID credential"
author: "tilarso"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiedIdUsageConfiguration resource type

Namespace: microsoft.graph

Configuration defining the usage capability of a [Verified ID credential](../resources/verifiedidprofile.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledForTestOnly|Boolean|Sets profile usage for evaluation (test-only) or production.|
|purpose|verifiedIdUsageConfigurationPurpose|Sets the supported scenarios for a Verified ID profile. Currently only `recovery` is supported. The possible values are: `recovery`, `onboarding`, `all`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedIdUsageConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedIdUsageConfiguration",
  "isEnabledForTestOnly": "Boolean",
  "purpose": "String"
}
```

