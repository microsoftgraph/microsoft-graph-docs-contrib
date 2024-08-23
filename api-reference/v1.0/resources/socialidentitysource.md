---
title: "socialIdentitySource resource type"
description: "Identifies a social identity as an identity source for a connected organization."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# socialIdentitySource resource type

Namespace: microsoft.graph

Used in the identity sources of an [connectedOrganization](connectedOrganization.md). The `@odata.type` value `#microsoft.graph.socialIdentitySource` identifies a social identity as an identity source for a connected organization.

Inherits from [identitySource](../resources/identitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the identity source. Typically the same value as the **socialIdentitySourceType**.|
|socialIdentitySourceType|[microsoft.graph.socialIdentitySourceType](./socialidentitysource.md)|The possible values are: `facebook`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.socialIdentitySourceType",
  "baseType": "microsoft.graph.identitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.socialIdentitySourceType",
  "displayName": "String",
  "socialIdentitySourceType": "String"
}
```
