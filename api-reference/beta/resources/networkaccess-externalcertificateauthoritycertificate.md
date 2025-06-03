---
title: "externalCertificateAuthorityCertificate resource type"
description: "Represents a customer's Certificate Authority (CA) certificate used for TLS inspection in Entra Global Secure Access. This enables secure TLS termination at the edge while using customer-managed certificates for traffic inspection."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# externalCertificateAuthorityCertificate resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customer's Certificate Authority (CA) certificate used for TLS inspection in Entra Global Secure Access. This resource enables secure TLS termination at the edge while using customer-managed certificates for traffic inspection. When creating a new CA, the service generates a Certificate Signing Request (CSR) that customers can sign using their PKI infrastructure, providing a secure way to use customer certificates without sharing private keys.


Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-tlstermination-list-externalcertificateauthoritycertificates.md)|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) collection|Get a list of the externalCertificateAuthorityCertificate objects and their properties.|
|[Create](../api/networkaccess-tlstermination-post-externalcertificateauthoritycertificates.md)|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md)|Create a new externalCertificateAuthorityCertificate object and receive a Certificate Signing Request (CSR).|
|[Get](../api/networkaccess-externalcertificateauthoritycertificate-get.md)|[microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md)|Get an externalCertificateAuthorityCertificate object.|
|[Update](../api/networkaccess-externalcertificateauthoritycertificate-update.md)|None|Update the properties of an externalCertificateAuthorityCertificate object, including uploading the signed certificate.|
|[Delete](../api/networkaccess-tlstermination-delete-externalcertificateauthoritycertificates.md)|None|Delete an externalCertificateAuthorityCertificate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the certificate authority. Inherits from [entity](../resources/entity.md). Read-only.|
|name|String|The display name of the certificate authority.|
|commonName|String|The common name (CN) field of the certificate.|
|organizationName|String|The organization name (O) field of the certificate.|
|validity|[microsoft.graph.networkaccess.validityDate](../resources/networkaccess-validitydate.md)|The validity period of the certificate, including start and end dates.|
|status|microsoft.graph.networkaccess.tlsCertificateStatus|The current status of the certificate. The possible values are: `csrGenerated`, `enrolling`, `active`, `unknownFutureValue`. Read-only.|
|certificateSigningRequest|String|The Certificate Signing Request (CSR) generated when creating the CA. This CSR should be signed using the customer's PKI infrastructure. Read-only.|
|certificate|String|The signed X.509 certificate in PEM format.|
|chain|String|The certificate chain in PEM format, containing all intermediate certificates up to the root CA.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
  "id": "String (identifier)",
  "name": "String",
  "commonName": "String",
  "organizationName": "String",
  "validity": {
    "@odata.type": "microsoft.graph.networkaccess.validityDate"
  },
  "status": "String",
  "certificateSigningRequest": "String",
  "certificate": "String",
  "chain": "String"
}
