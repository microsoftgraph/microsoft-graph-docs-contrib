---
title: "x509CertificateCrlValidationConfiguration resource type"
description: "Determines whether certificate-based authentication should fail if the issuing CA doesn't have a valid certificate revocation list (CRL) configured."
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
|exemptedCertificateAuthoritiesSubjectKeyIdentifiers| String collection|Represents the SKIs of CAs that should be excluded from the valid CRL distribution point check. SKI is represented as a hexadecimal string.|
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