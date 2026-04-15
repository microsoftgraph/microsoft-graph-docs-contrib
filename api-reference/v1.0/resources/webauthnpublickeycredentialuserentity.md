---
title: "webauthnPublicKeyCredentialUserEntity resource type"
description: "Contains information about the user account for which the credential is generated."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialUserEntity resource type

Namespace: microsoft.graph

Contains information about the user account for which the credential is generated.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the user account bound to the generated credential, as displayed in Microsoft Entra ID.|
|id|String|The Microsoft Entra ID-assigned object ID of the user account bound to the generated credential. The ID is encoded to WebAuthn spec by Microsoft Entra ID and is not represented as a GUID.|
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

