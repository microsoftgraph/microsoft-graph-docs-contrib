---
title: "webauthnPublicKeyCredentialDescriptor resource type"
description: "Properties describing an existing public key credential in a WebAuthn method."  
author: "tilarso"  
ms.reviewer: intelligentaccesspm  
ms.localizationpriority: medium  
ms.subservice: "entra-sign-in"  
doc_type: resourcePageType  
ms.date: 07/25/2024
---  

# webauthnPublicKeyCredentialDescriptor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Properties describing an existing public key credential in a WebAuthn method. For more information, see [Credential Descriptor](https://www.w3.org/TR/WebAuthn-2/#dictdef-publickeycredentialdescriptor).  

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the credential.|  
|transports|String collection|The transport method used by the WebAuthn authenticator to communicate with the client. For example, `usb`, `nfc`, `ble`.|  
|type|String|Type of public key credential. The only supported value is `public-key`.|  


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialDescriptor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialDescriptor",
  "type": "String",
  "id": "String",
  "transports": [
    "String"
  ]
}
```

