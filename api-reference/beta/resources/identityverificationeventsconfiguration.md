---
title: "identityVerificationEventsConfiguration resource type"
description: "Represents the tenant-level configuration that controls the collection and exposure of identity verification events and credential provenance information for Verified ID verification."
author: "tilarso"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identityVerificationEventsConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-level configuration that controls the collection and exposure of identity verification events and credential provenance information for Verified ID verification. This configuration applies to the entire tenant and isn't scoped to individual Verified ID profiles. It's contained by the [verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md) resource and has no operations of its own.

When this configuration is disabled, no new identity verification events or credential provenance information are collected and retained events can't be accessed. Disabling the configuration doesn't delete retained data.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether identity verification events and credential provenance information are collected and exposed for Verified ID verification across the tenant. The default value is `false` when this property is omitted from the configuration object.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityVerificationEventsConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityVerificationEventsConfiguration",
  "isEnabled": "Boolean"
}
```