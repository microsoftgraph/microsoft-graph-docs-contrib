---
title: "webauthnPublicKeyCredentialUserEntity resource type"
description: "Represents information about the user account for which a credential is being created."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialUserEntity resource type

Namespace: microsoft.graph

Represents information about the user account for which a credential is being created. This information is used by the authenticator to associate the credential with the user. This complex type is the type for the **user** property of the [webauthnPublicKeyCredentialCreationOptions](../resources/webauthnpublickeycredentialcreationoptions.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A human-readable name for the user account, intended for display.|
|id|String|A user identifier, determined by the relying party. This value is opaque to the authenticator and is Base64URL-encoded without padding.|
|name|String|A human-readable identifier for the user account, such as a username or email address.|

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
