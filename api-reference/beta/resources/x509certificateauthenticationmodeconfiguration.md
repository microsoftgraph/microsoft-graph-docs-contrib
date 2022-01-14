---
title: "x509CertificateAuthenticationModeConfiguration resource type"
description: "A complex type that defines the X.509 certificate strong authentication configurations. This configuration includes the default authentication mode and the different rules of strong auth bindings."
author: "Vimala"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateAuthenticationModeConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines strong auth configurations. This configuration includes the default authentication mode and the different rules of strong auth bindings. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rules|[x509CertificateRule](../resources/x509certificaterule.md) collection|Rules are configured in addition to the authentication mode. Configure authentication rule to bind a specific Issuer Subject or Policy OID to one particular authentication mode, i.e., Binds Policy OID "1.32.132.343" to "Multi-factor" Authentication.|
|x509CertificateAuthenticationDefaultMode|x509CertificateAuthenticationMode|The type of strong authentication mode, possible values are: `x509CertificateSingleFactor` and `x509CertificateMultiFactor`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateAuthenticationModeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateAuthenticationModeConfiguration",
  "x509CertificateAuthenticationDefaultMode": "String",
  "rules": [
    {
      "@odata.type": "microsoft.graph.x509CertificateRule"
    }
  ]
}
```

