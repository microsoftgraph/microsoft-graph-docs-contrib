---
title: "webauthnPublicKeyCredentialUserEntity resource type"
description: "Contains information about the user account for which the credential is generated."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# webauthnPublicKeyCredentialUserEntity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the user account for which the credential is generated. For more information, see [User Account Parameters for Credential Generation](https://www.w3.org/TR/WebAuthn-2/#dictdef-publickeycredentialuserentity). 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Microsoft Entra ID-assigned object ID of the user account bound to the generated credential. The ID is encoded to WebAuthn spec by Microsoft Entra ID and is not represented as a GUID.|  
|displayName|String|The display name of the user account bound to the generated credential, as displayed in Microsoft Entra ID.|  
|name|String|The user principal name (UPN) of the user account bound to the generated credential, as displayed in Microsoft Entra ID.|  

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialUserEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialUserEntity",
  "id": "String",
  "displayName": "String",
  "name": "String"
}
```

