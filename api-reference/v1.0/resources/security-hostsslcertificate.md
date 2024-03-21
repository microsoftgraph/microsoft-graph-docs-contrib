---
title: "hostSslCertificate resource type"
description: "Represents an observed relationship between a host and an sslCertificate."
author: "nblankenau"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# hostSslCertificate resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents an observed relationship between a [host](../resources/security-host.md) and an [sslCertificate](../resources/security-sslcertificate.md).

Inherits from [artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List hostSslCertificates](../api/security-host-list-sslcertificates.md)|[microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md) collection|Get a list of [hostSslCertificate](../resources/security-hostsslcertificate.md) objects from the [host](../resources/security-host.md) navigation property.|
|[Get hostSslCertificate](../api/security-hostsslcertificate-get.md)|[microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md)|Get the properties and relationships of a [hostSslCertificate](../resources/security-hostsslcertificate.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time when this **hostSslCertificate** was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The system-generated ID for this **hostSslCertificate**. Inherited from [artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this **hostSslCertificate** was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|ports|[microsoft.graph.security.hostSslCertificatePort](../resources/security-hostsslcertificateport.md) collection|The ports related with this **hostSslCertificate**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The **host** for this **hostSslCertificate**.|
|sslCertificate|[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md)|The **sslCertificate** for this **hostSslCertificate**.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostSslCertificate",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostSslCertificate",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "ports": [{"@odata.type": "microsoft.graph.security.hostSslCertificatePort"}]
}
```
