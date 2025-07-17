---
title: "acl resource type"
description: "An access control entry for an item indexed by a Microsoft Search externalConnection."
ms.localizationpriority: medium
author: "snlraju-msft"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# acl resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An access control entry for an item indexed by a Microsoft Search [externalConnection](externalconnectors-externalconnection.md).

## Properties

| Property       | Type   | Description                                        |
|:---------------|:-------|:---------------------------------------------------|
| accessType     | String | The access granted to the identity. Possible values are: `grant`, `deny`. |
| identitySource | String | The source of identity. Possible values are `azureActiveDirectory` or `external`.           |
| type           | String | The type of identity. Possible values are: `user`, `group`, `everyone`, `everyoneExceptGuests` if the identitySource is `azureActiveDirectory` and just `group` if the identitySource is `external`. |
| value          | String | The unique identifer of the identity. For Microsoft Entra identities, `value` is set to the object identifier of the user, group or tenant for types user, group and everyone (and everyoneExceptGuests) respectively. For external groups, `value` is set to the ID of the [externalGroup](externalconnectors-externalgroup.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.acl",
  "baseType": null
}-->

```json
{
  "accessType": "String",
  "identitySource": "String",
  "type": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "acl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
