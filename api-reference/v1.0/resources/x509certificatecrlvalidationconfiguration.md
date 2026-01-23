---
title: "x509CertificateCRLValidationConfiguration resource type"
description: "Determines whether certificate-based authentication should fail if the issuing CA doesn't have a valid certificate revocation list (CRL) configured."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/10/2025
---

# x509CertificateCRLValidationConfiguration resource type

Namespace: microsoft.graph

Determines whether certificate-based authentication should fail if the issuing Certificate Authority (CA) doesn't have a valid certificate revocation list (CRL) configured. Includes the subject key identifier (SKI) of the CAs that should be exempted from CRL validation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exemptedCertificateAuthoritiesSubjectKeyIdentifiers| String collection|Represents the SKIs of CAs that should be excluded from the valid CRL distribution point check. SKI is represented as a hexadecimal string.|
|state|x509CertificateCRLValidationConfigurationState|Describes whether valid CRLDistributionPoint is required from CAs for CBA to be successful. The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateCRLValidationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateCRLValidationConfiguration",
  "exemptedCertificateAuthoritiesSubjectKeyIdentifiers": [
    "String"
  ],
  "state": "String"
}
```