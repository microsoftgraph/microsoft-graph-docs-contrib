---
title: "webauthnPublicKeyCredentialDescriptor resource type"
description: "Properties describing an existing public key credential in a WebAuthn method."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialDescriptor resource type

Namespace: microsoft.graph

Properties describing an existing public key credential in a WebAuthn method.

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

