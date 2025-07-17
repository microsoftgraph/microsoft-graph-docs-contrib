---
title: "onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for loading the authentication methods during the authentication step in an external identities user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a managed handler for the loading of authentication methods during the authentication step in an external identities user flow on a Microsoft Entra workforce or customer tenant. It defines the authentication methods that a user can select.

Inherits from [onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md).

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|Required. The list of identity providers that user can sign in or sign up with. At least one identity provider must be specified.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
}
```
