---
title: "sslCertificate resource type"
description: "SSL certificates enable secure and encrypted communication, verifying website identity and protecting sensitive information to build user trust."
author: "nblankenau"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# sslCertificate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

An SSL certificate is a digital certificate that enables secure and encrypted communication between a website and its users, protecting sensitive information. It verifies the website's identity and encrypts data to ensure privacy and build user trust. When Microsoft Defender Threat Intelligence crawls a website, it indexes SSL certificates so users can search them. Malicious actors can exploit SSL certificates by using fraudulent certificates to create deceptive websites or compromising legitimate certificates to intercept encrypted communications.


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sslCertificates](../api/security-sslcertificate-list.md)|[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) collection|Get a list of the [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) objects and their properties.
|[Get sslCertificate](../api/security-sslcertificate-get.md)|[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md)|Read the properties and relationships of a [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationDateTime|DateTimeOffset|The date and time when a certificate will expire.|
|fingerprint|String|A hash of the certificate calculated on the data and signature.|
|firstSeenDateTime|DateTimeOffset|The first date and time that this sslCertificate was observed.|
|id|String| The system-generated id for this sslCertificate. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|issueDateTime|DateTimeOffset|The date and time when a certificate was issued.|
|issuer|[microsoft.graph.security.sslCertificateEntity](../resources/security-sslcertificateentity.md)|The entity granting this certificate.|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this sslCertificate was observed.|
|serialNumber|String|The serial number associated with an SSL certificate.|
|sha1|String|A SHA-1 hash of the certificate. **Note**: This is not the signature.|
|subject|[microsoft.graph.security.sslCertificateEntity](../resources/security-sslcertificateentity.md)|The person, site, machine, etc. this certificate is for.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|relatedHosts|[microsoft.graph.security.host](../resources/security-host.md) collection|**hosts** that are related with this sslCertificate|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "fingerprint": "String",
  "sha1": "String",
  "expirationDateTime": "String (timestamp)",
  "issueDateTime": "String (timestamp)",
  "serialNumber": "String",
  "subject": {
    "@odata.type": "microsoft.graph.security.sslCertificateEntity"
  },
  "issuer": {
    "@odata.type": "microsoft.graph.security.sslCertificateEntity"
  }
}
```

