---
title: "x509CertificateUserBinding resource type"
description: "Defines the fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user account."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# x509CertificateUserBinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user account.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the binding. Microsoft Entra ID uses the binding with the highest priority. This value must be a non-negative integer and unique in the collection of objects in the **certificateUserBindings** property of an **x509CertificateAuthenticationMethodConfiguration** object. Required|
|trustAffinityLevel|x509CertificateAffinityLevel| The affinity level of the username binding rule. The possible values are: `low`, `high`, `unknownFutureValue`.|
|userProperty|String|Defines the Microsoft Entra user property of the user object to use for the binding. The possible values are: `userPrincipalName`, `onPremisesUserPrincipalName`, `email`. Required.|
|x509CertificateField|String|The field on the X.509 certificate to use for the binding. The possible values are: `PrincipalName`, `RFC822Name`.|

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
  "trustAffinityLevel": "String",
  "userProperty": "String",
  "x509CertificateField": "String"
}
```
