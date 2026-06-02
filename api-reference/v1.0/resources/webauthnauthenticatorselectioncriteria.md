---
title: "webauthnAuthenticatorSelectionCriteria resource type"
description: "Specifies criteria for selecting an appropriate authenticator for credential creation."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnAuthenticatorSelectionCriteria resource type

Namespace: microsoft.graph

Specifies criteria for selecting an appropriate authenticator for credential creation. These criteria help ensure that the created credential meets the relying party's security and usability requirements. This complex type is the type for the **authenticatorSelection** property of the [webauthnPublicKeyCredentialCreationOptions](../resources/webauthnpublickeycredentialcreationoptions.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticatorAttachment|String|Specifies the preferred attachment modality for the authenticator. Possible values: `platform` (device-bound authenticator, such as Windows Hello), `cross-platform` (removable authenticator, such as a USB security key), or `null` (no preference).|
|requireResidentKey|Boolean|Indicates whether the authenticator must create a client-side-resident credential (also known as a discoverable credential). If `true`, the credential can be used without providing a credential ID.|
|userVerification|String|Specifies the relying party's preference for user verification during credential creation. Possible values: `required`, `preferred`, or `discouraged`.|

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
