---
title: "sslCertificate resource type"
description: "Represents an SSL certificate that enables secure and encrypted communication, verifying website identity and protecting sensitive information to build user trust."
author: "nblankenau"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 06/25/2024
---

# sslCertificate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents an SSL certificate that is a digital certificate that enables secure and encrypted communication between a website and its users, protecting sensitive information. It verifies the identity of a website and encrypts data to ensure privacy and build user trust. When Microsoft Defender Threat Intelligence crawls a website, it indexes SSL certificates so users can search them. Malicious actors can exploit SSL certificates by using fraudulent certificates to create deceptive websites or compromising legitimate certificates to intercept encrypted communications.

Inherits from [artifact](../resources/security-artifact.md).

## Methods

| Method                                                                    |Return type|Description|
|:--------------------------------------------------------------------------|:---|:---|
| [List](../api/security-threatintelligence-list-sslcertificates.md)        |[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) collection|Get a list of [sslCertificate](../resources/security-sslcertificate.md) objects and their properties.|
| [Get](../api/security-sslcertificate-get.md)                              |[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md)|Get the properties and relationships of an [sslCertificate](../resources/security-sslcertificate.md) object.|
| [List related hosts](../api/security-sslcertificate-list-relatedhosts.md) |[microsoft.graph.security.host](../resources/security-host.md) collection|Get a list of related [host](../resources/security-host.md) resources associated with an [sslCertificate](../resources/security-sslcertificate.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date and time when a certificate expires. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|fingerprint|String|A hash of the certificate calculated on the data and signature.|
|firstSeenDateTime|DateTimeOffset|The first date and time when this **sslCertificate** was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| The system-generated ID for this **sslCertificate**. Inherited from [artifact](../resources/security-artifact.md).|
|issueDateTime|DateTimeOffset|The date and time when a certificate was issued. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|issuer|[microsoft.graph.security.sslCertificateEntity](../resources/security-sslcertificateentity.md)|The entity that grants this certificate.|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this **sslCertificate** was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|serialNumber|String|The serial number associated with an SSL certificate.|
|sha1|String|A SHA-1 hash of the certificate. **Note:** This is not the signature.|
|subject|[microsoft.graph.security.sslCertificateEntity](../resources/security-sslcertificateentity.md)|The person, site, machine, and so on, this certificate is for.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|relatedHosts|[microsoft.graph.security.host](../resources/security-host.md) collection|The **host** resources related with this **sslCertificate**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sslCertificate",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sslCertificate",
  "expirationDateTime": "String (timestamp)",
  "fingerprint": "String",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "issueDateTime": "String (timestamp)",
  "issuer": {"@odata.type": "microsoft.graph.security.sslCertificateEntity"},
  "lastSeenDateTime": "String (timestamp)",
  "serialNumber": "String",
  "sha1": "String",
  "subject": {"@odata.type": "microsoft.graph.security.sslCertificateEntity"}
}
```
