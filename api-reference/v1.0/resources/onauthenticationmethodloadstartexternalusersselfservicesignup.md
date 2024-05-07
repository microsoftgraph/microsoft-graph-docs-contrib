---
title: "onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler that customizes the authentication methods an external user can select when authenticating to an application"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

This is a managed handler for the event when authentication methods are ready to be presented to an external user in a customized authentication flow for an application on a Microsoft Entra external tenant. This handler defines which identity providers and authentication methods the user can select for primary (first-factor) authentication, and is defined as part of a multi-event policy, [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md). 

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
