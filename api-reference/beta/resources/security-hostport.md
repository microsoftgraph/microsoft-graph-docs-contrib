---
title: "hostPort resource type"
description: "Represents the connection endpoints that direct data to and from the services that run on a host."
author: "angelo-moulic"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# hostPort resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents the connection endpoints that direct data to and from the services that run on a [host](../resources/security-host.md).

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                               | Return type                                                                       | Description                                                     |
|:-----------------------------------------------------|:----------------------------------------------------------------------------------|:----------------------------------------------------------------|
| [List hostPorts](../api/security-host-list-ports.md) | [microsoft.graph.security.hostPort](../resources/security-hostport.md) collection | Get a list of **hostPort** objects assoicated with a **host**.      |
| [Get hostPort](../api/security-hostport-get.md)      | [microsoft.graph.security.hostPort](../resources/security-hostport.md)            | Read the properties and relationships of a **hostPort** object. |

## Properties

| Property          | Type                                                                                                | Description                                                                                                                                                                                                                                                           |
| :---------------- | :-------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| banners           | [microsoft.graph.security.hostPortBanner](../resources/security-hostportbanner.md) collection       | The **hostPortBanners** retrieved from scanning the port.                                                                                                                                                                                                             |
| firstSeenDateTime | DateTimeOffset                                                                                      | The first date and time when Microsoft Defender Threat Intelligence observed the **hostPort**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. |
| id                | String                                                                                              | A system-generated ID for the **hostPort**. Inherited from [entity](../resources/entity.md).                                                                                                                                                                                                                         |
| lastScanDateTime  | DateTimeOffset                                                                                      | The last date and time when Microsoft Defender Threat Intelligence scanned the **hostPort**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`.   |
| lastSeenDateTime  | DateTimeOffset                                                                                      | The last date and time when Microsoft Defender Threat Intelligence observed the **hostPort**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`.  |
| port              | Int32                                                                                               | The numerical identifier of the port which is standardized across the internet.                                                                                                                                                                                       |
| protocol          | microsoft.graph.security.hostPortProtocol                                                           | The general protocol used to scan the port. The possible values are: `tcp`, `udp`, `unknownFutureValue`.                                                                                                                                                              |
| services          | [microsoft.graph.security.hostPortComponent](../resources/security-hostportcomponent.md) collection | The **hostPortComponents** retrieved from scanning the port.                                                                                                                                                                                                          |
| status            | microsoft.graph.security.hostPortStatus                                                             | The status of the port. The possible values are: `open`, `filtered`, `closed`, `unknownFutureValue`.                                                                                                                                                                  |
| timesObserved     | Int32                                                                                               | The total amount of times that Microsoft Defender Threat Intelligence has observed the **hostPort** in all its scans.                                                                                                                                                      |

## Relationships

| Relationship             | Type                                                                               | Description                                                                                                                                                                          |
| :----------------------- | :--------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| host                     | [microsoft.graph.security.host](../resources/security-host.md)                     | The **host** related to this **hostPort**. This is a reverse navigation property. When you navigate to **hostPorts** from a **host**, assume that this is a return reference. |
| mostRecentSslCertificate | [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) | The most recent **sslCertificate** used to communicate on the port.                                                                                                                   |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostPort",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.hostPort",
  "banners": [{"@odata.type": "microsoft.graph.security.hostPortBanner"}],
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastScanDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "port": "Int32",
  "protocol": "String",
  "services": [{"@odata.type": "microsoft.graph.security.hostPortComponent"}],
  "status": "String",
  "timesObserved": "Int32"
}
```
