---
title: "mobileDriversLicenseConfiguration resource type"
description: "Configuration for accepting mobile driver's licenses in a Verified ID profile."
author: "tilarso"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# mobileDriversLicenseConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings for accepting mobile driver's licenses through the **mobileDriversLicenseConfiguration** property of a [verifiedIdProfile](../resources/verifiedidprofile.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|acceptedRegions|String collection|The ISO 3166-2 region codes accepted for mobile driver's licenses. An empty collection indicates all regions are accepted.|
|documentStandard|String|The document standard that accepted mobile driver's licenses must use, such as ISO18013-5.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileDriversLicenseConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileDriversLicenseConfiguration",
  "acceptedRegions": [
    "String"
  ],
  "documentStandard": "String"
}
```
