---
title: "externalDomainFederation resource type"
description: "The externalDomainFederation type identifies a non-tenant domain with a configured identity provider as an identity source for a connected organization."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# externalDomainFederation resource type

Namespace: microsoft.graph


Used in the identity sources of an [connectedOrganization](connectedOrganization.md). The `@odata.type` value `#microsoft.graph.externalDomainFederation` indicates that this type identifies a domain with a configured identity provider as an identity source for a connected organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the identity source, typically also the domain name. Read only. |
|domainName|String|The domain name. Read only. |
|issuerUri|String|The issuerURI of the incoming federation. Read only. |

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalDomainFederation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalDomainFederation",
  "displayName": "String",
  "domainName": "String",
  "issuerUri": "String"
}
```


