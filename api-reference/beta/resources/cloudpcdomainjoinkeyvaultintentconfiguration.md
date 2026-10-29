---
title: "cloudPcDomainJoinKeyVaultIntentConfiguration resource type"
description: "An abstract type that represents how an Azure Key Vault secret is used as an Active Directory domain join credential."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcDomainJoinKeyVaultIntentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents how an Azure Key Vault secret is used as an Active Directory domain join credential. 

This abstract type can't be instantiated directly. Use the [cloudPcDomainJoinKeyVaultPasswordConfiguration](../resources/cloudpcdomainjoinkeyvaultpasswordconfiguration.md) derived type, identified by the **@odata.type** property.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinKeyVaultIntentConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinKeyVaultIntentConfiguration"
}
```
