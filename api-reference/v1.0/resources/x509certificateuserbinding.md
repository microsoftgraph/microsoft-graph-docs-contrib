---
title: "x509CertificateUserBinding resource type"
description: "Defines the fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user account."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateUserBinding resource type

Namespace: microsoft.graph

Defines the fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user account.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the binding. Azure AD uses the binding with the highest priority. This value must be a non-negative integer and unique in the collection of objects in the **certificateUserBindings** property of an **x509CertificateAuthenticationMethodConfiguration** object. Required|
|userProperty|String|Defines the Azure AD user property of the user object to use for the binding. The possible values are: `userPrincipalName`, `onPremisesUserPrincipalName`, `certificateUserIds`. Required.|
|x509CertificateField|String|The field on the X.509 certificate to use for the binding. The possible values are: `PrincipalName`, `RFC822Name`, `SubjectKeyIdentifier`, `SHA1PublicKey`. |

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

