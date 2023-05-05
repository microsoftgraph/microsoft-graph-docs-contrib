---
title: "onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for loading of authentication methods step in an external identities user flow"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a 'managed' handler for the loading of authentication methods step in an external identities user flow on an AD workforce or customer tenant.  It defines the authentication methods a user can select.

Inherits from [onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md). Complex type.

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|Required. List of identity providers which user can sign in (or sign up) with.  At least one Identity Provider must be specified.|

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

