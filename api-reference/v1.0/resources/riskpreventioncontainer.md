---
title: "riskPreventionContainer resource type"
description: "Represents the entry point for risk prevention features in External Identities."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "rasikamore"
ms.date: 10/23/2025
---

# riskPreventionContainer resource type

Namespace: microsoft.graph



Represents the entry point for risk prevention features in [External Identities](/azure/active-directory/external-identities/) for Microsoft Entra External ID tenants.

## Methods
None.


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fraudProtectionProviders|[fraudProtectionProvider](../resources/fraudprotectionprovider.md) collection|Represents entry point for fraud protection provider configurations for Microsoft Entra External ID tenants.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskPreventionContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskPreventionContainer"
}
```

