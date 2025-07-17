---
title: "hostSslCertificatePort resource type"
description: "Represents the ports of a host where a hostSslCertificate is currently or was previously related."
author: "nblankenau"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# hostSslCertificatePort resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents the ports of a [host](../resources/security-host.md) where a [hostSslCertificate](../resources/security-hostsslcertificate.md) is currently or was previously related.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time that this port was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this port was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|port|Int32|The port number.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostSslCertificatePort"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostSslCertificatePort",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "port": "Int32"
}
```
