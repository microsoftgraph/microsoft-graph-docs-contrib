---
title: "x509CertificateAuthorityScope resource type"
description: "Defines configuration to allow a group of users to use certificates from specific issuing certificate authorities to successfully authenticate. "
author: "vimrang"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: X509 certificate
toc.keywords: [ certificate-based authentication, CBA ]
---

# x509CertificateAuthorityScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines configuration to allow a group of users to use certificates from specific issuing certificate authorities to successfully authenticate.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includeTargets|[includeTarget](../resources/includetarget.md) collection|A collection of groups that are enabled to be in scope to use certificates issued by specific certificate authority.|
|publicKeyInfrastructureIdentifier|String|Public Key Infrastructure container object under which the certificate authorities are stored in the Entra PKI based trust store.|
|subjectKeyIdentifier|String|Subject Key Identifier that identifies the certificate authority uniquely.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateAuthorityScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateAuthorityScope",
  "subjectKeyIdentifier": "String",
  "publicKeyInfrastructureIdentifier": "String",
  "includeTargets": [
    {
      "@odata.type": "microsoft.graph.includeTarget"
    }
  ]
}
```

