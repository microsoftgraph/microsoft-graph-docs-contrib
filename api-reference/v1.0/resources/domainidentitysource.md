---
title: "domainIdentitySource resource type"
description: "The domainIdentitySource type identifies a non-tenant domain as an identity source for a connected organization."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---
# domainIdentitySource resource type

Namespace: microsoft.graph

Used in the identity sources of an [connectedOrganization](connectedOrganization.md). The `@odata.type` value `#microsoft.graph.domainIdentitySource` indicates that this type identifies a domain as an identity source for a connected organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the identity source, typically also the domain name. Read only. |
|domainName|String|The domain name. Read only. |

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.domainIdentitySource",
  "baseType": "microsoft.graph.identitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.domainIdentitySource",
  "displayName": "String",
  "domainName": "String"
}
```
