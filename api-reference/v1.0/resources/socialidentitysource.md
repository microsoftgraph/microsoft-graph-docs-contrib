---
title: "socialIdentitySource resource type"
description: "The socialIdentitySource type is a subtype of an identity source for a connected organization."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# socialIdentitySource resource type

Namespace: microsoft.graph

The social identity source used as an identity source of a [connectedOrganization](connectedOrganization.md).

Inherits from [identitySource](../resources/identitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the socialIdentitySource.|
|socialIdentitySourceType|socialIdentitySourceType|The possible values are: `facebook`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.socialIdentitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.socialIdentitySource",
  "displayName": "String",
  "socialIdentitySourceType": "String"
}
```
