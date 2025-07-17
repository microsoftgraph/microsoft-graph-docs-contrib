---
title: "verifiedDomain resource type"
description: "Specifies a domain for a tenant. The verifiedDomains property of the organization entity is a collection of verifiedDomain objects."
ms.localizationpriority: medium
author: "tafra00"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 04/25/2024
---

# verifiedDomain resource type

Namespace: microsoft.graph

Specifies a domain for a tenant. The **verifiedDomains** property of the [organization](organization.md) entity is a collection of **verifiedDomain** objects.


## Properties
| Property | Type | Description|
|---------|---------|---------|
| capabilities | String | For example, `Email`, `OfficeCommunicationsOnline`. |
| isDefault | Boolean | `true` if this is the default domain associated with the tenant; otherwise, `false`. |
| isInitial | Boolean | `true` if this is the initial domain associated with the tenant; otherwise, `false`. |
| name | String | The domain name; for example, `contoso.com`. |
| type | String | For example, `Managed`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.verifiedDomain"
}-->

```json
{
  "capabilities": "String",
  "isDefault": true,
  "isInitial": true,
  "name": "String",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "verifiedDomain resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

