---
title: "webauthnAuthenticatorSelectionCriteria resource type"
description: Properties of WebAuthn authenticators allowed to be used for authentication in Microsoft Entra ID. 
author: "tilarso"  
ms.reviewer: intelligentaccesspm  
ms.localizationpriority: medium  
ms.subservice: "entra-sign-in"  
doc_type: resourcePageType  
ms.date: 07/25/2024
---  

# webauthnAuthenticatorSelectionCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Properties of WebAuthn Authenticators allowed to be used for authentication in Entra ID. For more information, see [Authenticator Selection Criteria](https://www.w3.org/TR/WebAuthn-2/#dictdef-authenticatorselectioncriteria). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticatorAttachment|String|Microsoft Entra ID-preferred attachment modality. For more information, see [Authenticator Attachment Modality](https://www.w3.org/TR/WebAuthn-2/#authenticator-attachment-modality)|  
|requireResidentKey|Boolean|Microsoft Entra ID-preferred client-side credential discoverability. Currently always `true`. The WebAuthn authenticator must store the credential identifier on the authenticator.|  
|userVerification|String|Microsoft Entra ID requirement to verify the user is present during credential provisioning. Currently always `required`.|  

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnAuthenticatorSelectionCriteria"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnAuthenticatorSelectionCriteria",
  "authenticatorAttachment": "String",
  "requireResidentKey": "Boolean",
  "userVerification": "String"
}
```
