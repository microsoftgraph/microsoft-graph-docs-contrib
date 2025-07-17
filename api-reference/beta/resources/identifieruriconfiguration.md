---
title: "identifierUriConfiguration resource type"
description: "Configuration object to configure restrictions for identifier URIs on applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# identifierUriConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 Represents a restriction to block identifier URI formats on applications that could either be easily compromised or used for compromise.

## Properties
| Property                            | Type                            | Description                 |
| :-----------------------------------| :------------------------------ | :-------------------------- |
| uriAdditionWithoutUniqueTenantIdentifier               | [identifierUriRestriction](../resources/identifierurirestriction.md)       | Block new identifier URIs for applications, unless they contain a unique tenant identifier like the tenant ID, **appId** (client ID), or verified domain. For example, `api://{tenatId}/string`, `api://{appId}/string`, `{scheme}://string/{tenantId}`, `{scheme}://string/{appId}`, `https://{verified-domain.com}/path`, `{scheme}://{subdomain}.{verified-domain.com}/path`.|
| nonDefaultUriAddition               | [identifierUriRestriction](../resources/identifierurirestriction.md)       | Block new identifier URIs for applications, unless they are the "default" URI of the format `api://{appId}` or `api://{tenantId}/{appId}`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identifierUriConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identifierUriConfiguration",
  "uriAdditionWithoutUniqueTenantIdentifier": {
    "@odata.type": "microsoft.graph.identifierUriRestriction"
  },
  "nonDefaultUriAddition": {
    "@odata.type": "microsoft.graph.identifierUriRestriction"
  }
}
```

