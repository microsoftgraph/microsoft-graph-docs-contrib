---
title: "x509CertificateUserBinding resource type"
description: "A complex type that defines the mapping from X.509 certificate field to directory user attribute to bind the certificate to the user account. This controls which certificate fields and which Azure AD user attributes are used
to bind the certificate to the user."
author: "Vimala"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateUserBinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type that defines the mapping from X.509 certificate field to directory user attribute to bind the certificate to the user account. This controls which certificate fields and which Azure AD user attributes are used
to bind the certificate to the user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the binding.  Azure AD uses the binding with the highest priority where the X509CertificateField is present in the certificate. Value must be non-negative and unique in the list.|
|userProperty|String|Which user property on the Azure AD user object to use.  Value must be one of userPrincipalName, onPremisesUserPrincipalName, mail.|
|x509CertificateField|String|Which certificate field.  Value must be one of: principalName, RFC822Name.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateUserBinding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateUserBinding",
  "x509CertificateField": "String",
  "userProperty": "String",
  "priority": "Integer"
}
```

