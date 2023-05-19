---
title: "onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for loading the authentication methods during the authentication step in an external identities user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a managed handler for the loading of authentication methods during the authentication step in an external identities user flow on an Azure AD workforce or customer tenant. It defines the authentication methods that a user can select.

Inherits from [onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md).

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|Required. The list of identity providers that user can sign in or sign up with. At least one identity provider must be specified.|

## JSON representation
The following is a JSON representation of the resource.
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

