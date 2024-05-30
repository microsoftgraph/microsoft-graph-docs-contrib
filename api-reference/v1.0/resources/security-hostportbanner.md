---
title: "hostPortBanner resource type"
description: "Represents a banner retrieved from scanning a port on a host."
author: "angelo-moulic"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# hostPortBanner resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a banner retrieved from scanning a port on a [host](../resources/security-host.md).

## Properties

| Property          | Type           | Description                                                                                                                                                                                                                                                                 |
| :---------------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| banner            | String         | The text response received from a web component when scanning a **hostPort**.                                                                                                                                                                                               |
| firstSeenDateTime | DateTimeOffset | The first date and time when Microsoft Defender Threat Intelligence observed the **hostPortBanner**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. |
| lastSeenDateTime  | DateTimeOffset | The last date and time when Microsoft Defender Threat Intelligence observed the **hostPortBanner**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`.  |
| scanProtocol      | String         | The specific protocol used to scan the **hostPort**.                                                                                                                                                                                                                        |
| timesObserved     | Int32          | The total amount of times that Microsoft Defender Threat Intelligence has observed the **hostPortBanner** in all its scans.                                                                                                                                                      |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostPortBanner"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.hostPortBanner",
  "banner": "String",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "scanProtocol": "String",
  "timesObserved": "Int32"
}
```
