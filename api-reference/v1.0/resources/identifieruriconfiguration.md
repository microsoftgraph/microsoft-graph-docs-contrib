---
title: "identifierUriConfiguration resource type"
description: "Configuration object to configure restrictions for identifier URIs on applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/30/2026
---

# identifierUriConfiguration resource type

Namespace: microsoft.graph

Configuration object to configure a restriction for [identifier URIs on application objects](../resources/identifieruriconfiguration.md).

## Properties
| Property                            | Type                            | Description                 |
| :-----------------------------------| :------------------------------ | :-------------------------- |
| nonDefaultUriAddition               | [identifierUriRestriction](../resources/identifierurirestriction.md)       | Block new identifier URIs for applications, unless they are the "default" URI of the format `api://{appId}` or `api://{tenantId}/{appId}`.|
| uriAdditionWithoutUniqueTenantIdentifier               | [identifierUriRestriction](../resources/identifierurirestriction.md)       | Block new identifier URIs for applications, unless they contain a unique tenant identifier like the tenant ID, **appId** (client ID), or verified domain. For example, `api://{tenantId}/string`, `api://{appId}/string`, `{scheme}://string/{tenantId}`, `{scheme}://string/{appId}`, `https://{verified-domain.com}/path`, `{scheme}://{subdomain}.{verified-domain.com}/path`.|

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
  "nonDefaultUriAddition": {
    "@odata.type": "microsoft.graph.identifierUriRestriction"
  },
  "uriAdditionWithoutUniqueTenantIdentifier": {
    "@odata.type": "microsoft.graph.identifierUriRestriction"
  }
}
```

