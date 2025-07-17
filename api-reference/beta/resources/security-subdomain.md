---
title: "subdomain resource type"
description: "Represents an internet domain that is part of a primary domain"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# subdomain resource

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an internet domain that is part of a primary domain. For example, learn.microsoft.com is a subdomain of microsoft.com. 

For every subdomain, there can be a new set of IP addresses to which the domain resolves. It can be a great data source for finding related infrastructure.

## Methods

| Method                                                                | Return type                                                                         | Description                                                                                                                 |
| :-------------------------------------------------------------------- | :---------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------- |
| [Get](../api/security-subdomain-get.md)                     | [microsoft.graph.security.subdomain](../resources/security-subdomain.md)            | Read the properties and relationships of a [microsoft.graph.security.subdomain](../resources/security-subdomain.md) object. |
| [List](../api/security-host-list-subdomains.md) | [microsoft.graph.security.subdomain](../resources/security-subdomain.md) collection | Get a list of **subdomain** resources of a host.                                                                            |

## Properties

| Property          | Type           | Description                                                                                                                                                                                                                                                                          |
| :---------------- | :------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| firstSeenDateTime | DateTimeOffset | The first date and time when Microsoft Defender Threat Intelligence observed the subdomain. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. |
| id                | String         | A system-generated ID for the subdomain.                                                                                                                                                                                                                                         |

## Relationships

| Relationship | Type                                                           | Description                               |
| :----------- | :------------------------------------------------------------- | :---------------------------------------- |
| host         | [microsoft.graph.security.host](../resources/security-host.md) | The host of the subdomain. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.subdomain",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.subdomain",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)"
}
```
