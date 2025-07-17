---
title: "domainDnsUnavailableRecord resource type"
description: "Indicates that serviceConfigurationRecords can't be generated."
ms.localizationpriority: medium
author: "tafra00"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 05/15/2024
---

# domainDnsUnavailableRecord resource type

Namespace: microsoft.graph

When you query for the navigation property **serviceConfigurationRecords** for a [Domain](domain.md) entity, you may get back one or more [DomainDnsCnameRecord](domaindnscnamerecord.md), [DomainDnsMxRecord](domaindnsmxrecord.md), [DomainDnsSrvRecord](domaindnssrvrecord.md), and/or [DomainDnsTxtRecord](domaindnstxtrecord.md) entities. These entities indicate what DNS records you must add to the zone file of the domain, before the domain can be used by Microsoft Online Services. When it isn't possible to generate such entities, a DomainDnsUnavailableRecord Entity is returned instead. Inherited from [DomainDnsRecord](domaindnsrecord.md) entity.

## Methods
Direct queries to this resource aren't supported. See the [domain](domain.md) article for information on how to query for domain service records.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|description|String|Provides the reason why the **DomainDnsUnavailableRecord** entity is returned. |

## Relationships
None

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.domainDnsRecord",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsUnavailableRecord"
}-->

```json
{
  "description": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsUnavailableRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

