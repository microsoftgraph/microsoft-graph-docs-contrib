---
title: "fido2KeyRestrictions resource type"
description: "Represents the key restrictions that are enforced as part of the FIDO2 security keys authentication methods policy."
author: "calvinlui"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# fido2KeyRestrictions resource type

Namespace: microsoft.graph

Represents the key restrictions that are enforced as part of the [FIDO2 security keys authentication methods policy](../resources/fido2authenticationmethodconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aaGuids|String collection|A collection of Authenticator Attestation GUIDs. AADGUIDs define key types and manufacturers.|
|enforcementType|fido2RestrictionEnforcementType|Enforcement type. Possible values are: `allow`, `block`.|
|isEnforced|Boolean|Determines if the configured key enforcement is enabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fido2KeyRestrictions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2KeyRestrictions",
  "aaGuids": [
    "String"
  ],
  "enforcementType": "String",
  "isEnforced": "Boolean"
}
```
