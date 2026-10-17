---
title: "driftIdentityInfo resource type"
description: "Represents an abstract base type for identity information in an access drift record."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# driftIdentityInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for identity information in an access drift record. Derived types include [entraDriftIdentityInfo](../resources/entradriftidentityinfo.md) and [localDriftIdentityInfo](../resources/localdriftidentityinfo.md).

This object is returned in the **identities** relationship of [accessDriftDetail](../resources/accessdriftdetail.md).

This is an abstract type.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identity.|
|identifier|String|The unique identifier for the identity within the drift record.|
|principalName|String|The principal name of the identity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "identifier",
  "@odata.type": "microsoft.graph.driftIdentityInfo",
  "openType": false,
  "abstract": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driftIdentityInfo",
  "identifier": "String (identifier)",
  "principalName": "String",
  "displayName": "String"
}
```
