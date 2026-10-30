---
title: "cloudPcDomainJoinCredential resource type"
description: "An abstract type that represents an Active Directory domain join credential for a Cloud PC Azure network connection."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcDomainJoinCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an Active Directory domain join credential for a [Cloud PC Azure network connection](../resources/cloudpconpremisesconnection.md). 

This abstract type can't be instantiated directly. Use the [cloudPcPlainTextDomainJoinCredential](../resources/cloudpcplaintextdomainjoincredential.md) or [cloudPcKeyVaultDomainJoinCredential](../resources/cloudpckeyvaultdomainjoincredential.md) derived type, identified by the **@odata.type** property.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinCredential"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinCredential"
}
```
