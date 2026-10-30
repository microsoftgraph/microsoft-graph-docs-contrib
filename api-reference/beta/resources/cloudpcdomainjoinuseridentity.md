---
title: "cloudPcDomainJoinUserIdentity resource type"
description: "An abstract type that represents the Active Directory user identity used to join Cloud PCs to a domain."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcDomainJoinUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the Active Directory user identity used to join Cloud PCs to a domain. 

This abstract type can't be instantiated directly. Use the [cloudPcDomainJoinPlainTextUserIdentity](../resources/cloudpcdomainjoinplaintextuseridentity.md) derived type, identified by the **@odata.type** property.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinUserIdentity"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinUserIdentity"
}
```
