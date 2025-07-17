---
title: "webauthnPublicKeyCredentialRpEntity resource type"
description: "Contains information about the relying party (Microsoft Entra ID) responsible for the request."  
author: "tilarso"  
ms.reviewer: intelligentaccesspm  
ms.localizationpriority: medium  
ms.subservice: "entra-sign-in"  
doc_type: resourcePageType  
ms.date: 07/25/2024
---  

# webauthnPublicKeyCredentialRpEntity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the relying party (Microsoft Entra ID) responsible for the request. For more information, see [Relying Party Parameters for Credential Generation](https://www.w3.org/TR/WebAuthn-2/#dictdef-publickeycredentialrpentity). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the relying party (Microsoft Entra ID) bound to the generated credential. For example, `login.microsoft.com`.|  
|name|String|Human-readable identifier of the relying party. This property is always set to `Microsoft`.|  

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialRpEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialRpEntity",
  "id": "String",
  "name": "String"
}
```

