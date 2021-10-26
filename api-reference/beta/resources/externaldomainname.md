---
title: "externalDomainName resource type"
description: "Domain name of the external organization an Azure Active Directory (Azure AD) tenant acting as the resource tenant is trying to set up federation with."
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# externalDomainName resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the domain name of the external organization that an Azure Active Directory (Azure AD) tenant acting as the resource tenant is trying to set up federation with.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Domain name of the external organization that the Azure AD tenant is federating with. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalDomainName",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalDomainName",
  "id": "String (identifier)"
}
```
