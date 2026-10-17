---
title: "entraDriftIdentityInfo resource type"
description: "Represents identity information from Microsoft Entra in an access drift record."
author: "suhanigupta"
ms.date: 09/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# entraDriftIdentityInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identity information from Microsoft Entra in an access drift record.

This object can be returned in the **identities** relationship of [accessDriftDetail](../resources/accessdriftdetail.md).

Inherits from [driftIdentityInfo](../resources/driftidentityinfo.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identity. Inherited from [driftIdentityInfo](../resources/driftidentityinfo.md).|
|identifier|String|The unique identifier for the identity. Inherited from [driftIdentityInfo](../resources/driftidentityinfo.md).|
|identityType|String|The type of identity. The possible values are `user` and `group`.|
|principalName|String|The principal name of the identity. Inherited from [driftIdentityInfo](../resources/driftidentityinfo.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "identifier",
  "@odata.type": "microsoft.graph.entraDriftIdentityInfo",
  "baseType": "microsoft.graph.driftIdentityInfo",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraDriftIdentityInfo",
  "identifier": "String (identifier)",
  "identityType": "String",
  "principalName": "String",
  "displayName": "String"
}
```
