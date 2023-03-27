---
title: "passiveDnsRecord resource type"
description: "Represents a passive DNS record."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# passiveDnsRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a passive DNS record. Passive DNS is a system of record that stores DNS resolution data for a given location, record, and timeframe. This historical resolution data set allows users to view which domains resolved to an IP address and vice versa. This data set allows for time-based correlation based on domain or IP overlap. Passive DNS might enable the identification of previously unknown or newly created threat actor infrastructure.

Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get passiveDns](../api/security-passivednsrecord-get.md)|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md)|Read the properties and relationships of a [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|collectedDateTime|DateTimeOffset|The date and time that this **passiveDnsRecord** entry was collected by Microsoft. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|firstSeenDateTime|DateTimeOffset|The date and time when this **passiveDnsRecord** entry was first seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for this **passiveDnsRecord** entry. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The date and time when this **passiveDnsRecord** entry was most recently seen. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|recordType|String|The DNS record type for this **passiveDnsRecord** entry.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[microsoft.graph.security.artifact](../resources/security-artifact.md)|The [artifact](../resources/security-artifact.md) related to this **passiveDnsRecord** entry.|
|parentHost|[microsoft.graph.security.host](../resources/security-host.md)|The parent [host](../resources/security-host.md) related to this **passiveDnsRecord** entry. Generally, this is the value that you can search to discover this **passiveDnsRecord** value.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.passiveDnsRecord",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.passiveDnsRecord",
  "collectedDateTime": "String (timestamp)",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "recordType": "String"
}
```
