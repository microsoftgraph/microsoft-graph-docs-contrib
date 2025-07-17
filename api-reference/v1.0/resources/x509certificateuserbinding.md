---
title: "x509CertificateUserBinding resource type"
description: "Defines the fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user account."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# x509CertificateUserBinding resource type

Namespace: microsoft.graph

Defines the fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user account.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the binding. Microsoft Entra ID uses the binding with the highest priority. This value must be a non-negative integer and unique in the collection of objects in the **certificateUserBindings** property of an **x509CertificateAuthenticationMethodConfiguration** object. Required|
|userProperty|String|Defines the Microsoft Entra user property of the user object to use for the binding. The possible values are: `userPrincipalName`, `onPremisesUserPrincipalName`, `certificateUserIds`. Required.|
|x509CertificateField|String|The field on the X.509 certificate to use for the binding. The possible values are: `PrincipalName`, `RFC822Name`, `SubjectKeyIdentifier`, `SHA1PublicKey`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateUserBinding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateUserBinding",
  "priority": "Integer",
  "userProperty": "String",
  "x509CertificateField": "String"
}
```
