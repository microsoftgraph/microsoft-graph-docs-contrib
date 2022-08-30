---
title: "x509CertificateAuthenticationModeConfiguration resource type"
description: "Defines the strong authentication configurations for the X.509 certificate. This configuration includes the default authentication mode and the different rules of strong authentication bindings."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateAuthenticationModeConfiguration resource type

Namespace: microsoft.graph

Defines the strong authentication configurations for the X.509 certificate. This configuration includes the default authentication mode and the different rules of strong authentication bindings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rules|[x509CertificateRule](../resources/x509certificaterule.md) collection| Rules are configured in addition to the authentication mode to bind a specific **x509CertificateRuleType** to an **x509CertificateAuthenticationMode**. For example, bind the `policyOID` with identifier `1.32.132.343` to `x509CertificateMultiFactor` authentication mode.|
|x509CertificateAuthenticationDefaultMode|x509CertificateAuthenticationMode| The type of strong authentication mode. The possible values are: `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `unknownFutureValue`.|

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

