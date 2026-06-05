---
title: "webauthnPublicKeyCredentialRpEntity resource type"
description: "Represents the relying party that requests credential creation in WebAuthn."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialRpEntity resource type

Namespace: microsoft.graph

Represents the relying party that requests WebAuthn credential creation. The relying party is the entity, such as a website or service, that requests the creation of a credential. Configured in the **rp** proeprty of [webauthnPublicKeyCredentialCreationOptions](../resources/webauthnpublickeycredentialcreationoptions.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The relying party identifier. For web applications, this value is typically the domain name.|
|name|String|The human-readable name for the relying party.|

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
