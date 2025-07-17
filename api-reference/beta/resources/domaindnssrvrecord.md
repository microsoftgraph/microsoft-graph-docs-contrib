---
title: "domainDnsSrvRecord resource type"
description: "Represents a SRV record added to the DNS zone file of a particular domain in the tenant."
author: "tafra00"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 05/09/2024
---

# domainDnsSrvRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a SRV record added to the DNS zone file of a particular domain in the tenant. Inherited from [DomainDnsRecord](domaindnsrecord.md) entity.

## Methods
Direct queries to this resource aren't supported. See the [domain](domain.md) article for information on how to query for domain service records.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Unique identifier assigned to this entity. Not nullable, Read-only.|
|isOptional|Boolean| If false, the SRV record must be configured by the customer at the DNS host for Microsoft Online Services to operate correctly with the domain. |
|label|String| Value used when configuring the *name* property of the SRV record at the DNS host. |
|nameTarget|String| Value to use when configuring the *Target* property of the SRV record at the DNS host. |
|port|Int32| Value to use when configuring the *port* property of the SRV record at the DNS host. |
|priority|Int32| Value to use when configuring the *priority* property of the SRV record at the DNS host. |
|protocol|String| Value to use when configuring the *protocol* property of the SRV record at the DNS host. |
|recordType|String|  Type of DNS record. The value is always *Srv*. Key |
|service|String| Value to use when configuring the *service* property of the SRV record at the DNS host. |
|supportedService|String| Microsoft Online Service or feature that has a dependency on this SRV record.</br></br> Can be one of the following values: **null**, *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*, *FullRedelegation*, *SharePointPublic*, *OrgIdAuthentication*, *Yammer*, *Intune* |
|ttl|Int32| Value to use when configuring the *time-to-live (ttl)* property of the SRV record at the DNS host. Not nullable |
|weight|Int32| Value to use when configuring the *weight* property of the SRV record at the DNS host. |

## Relationships
None


## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsSrvRecord"
}-->

```json
{
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "nameTarget": "String",
  "port": 1024,
  "priority": 1024,
  "protocol": "String",
  "recordType": "String",
  "service": "String",
  "supportedService": "String",
  "ttl": 1024,
  "weight": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "domainDnsSrvRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


