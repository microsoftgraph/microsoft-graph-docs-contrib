---
title: "x509CertificateCrlValidationConfiguration resource type"
description: "Determines whether certificate based authentication should fail if the issuing CA does not have a valid certificate revocation list (CRL) configured. Includes the SKI of the Certificate Authorities that should be exempted from CRL validation."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/03/2024
---

# x509CertificateCrlValidationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Determines whether issuer(CA) hints are sent back to the client side to filter the certificates shown in certificate picker.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exemptedCertificateAuthoritiesSubjectKeyIdentifiers|Represents the SKIs of CAs that should be excluded from the Valid CRLDistributionPoint check. SKIs should be represented as a hexadecimal string.|Collection of SKI strings.|
|state|x509CertificateCrlValidationConfigurationState|The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateCrlValidationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateCrlValidationConfiguration",
  "exemptedCertificateAuthoritiesSubjectKeyIdentifiers": "Collection(Edm.String)",
  "state": "String"
}
```