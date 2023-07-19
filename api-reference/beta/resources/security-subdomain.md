---
title: "subdomain resource type"
description: "Represents an internet domain that is part of a primary domain"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# subdomain resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an internet domain that is part of a primary domain. For example, learn.microsoft.com is a subdomain of microsoft.com. 

## Methods

| Method                                                                | Return type                                                                         | Description                                                                                                                 |
| :-------------------------------------------------------------------- | :---------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------- |
| [Get subdomain](../api/security-subdomain-get.md)                     | [microsoft.graph.security.subdomain](../resources/security-subdomain.md)            | Read the properties and relationships of a [microsoft.graph.security.subdomain](../resources/security-subdomain.md) object. |
| [List subdomains for a host](../api/security-host-list-subdomains.md) | [microsoft.graph.security.subdomain](../resources/security-subdomain.md) collection | Get a list of **subdomain** resources of a host.                                                                            |

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

The following is a JSON representation of the resource.

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
