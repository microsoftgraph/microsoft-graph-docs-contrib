---
title: "verifiedIdSelfServiceIssuance resource type"
description: "Configuration for self-service issuance in a Verified ID profile."
author: "tilarso"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiedIdSelfServiceIssuance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings for self-service Verified ID issuance through the **selfServiceIssuance** property of a [verifiedIdProfile](../resources/verifiedidprofile.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether self-service issuance is enabled.|
|issuanceUrl|String|The HTTPS URL where users can start self-service issuance to obtain the credential when required by the credential type.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedIdSelfServiceIssuance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedIdSelfServiceIssuance",
  "isEnabled": "Boolean",
  "issuanceUrl": "String"
}
```
