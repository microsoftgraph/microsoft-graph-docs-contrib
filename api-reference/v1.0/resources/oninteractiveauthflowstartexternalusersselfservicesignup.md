---
title: "onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler that customizes what happens when an external user initiates authenticating to an application."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

This is a managed handler for the initiation of a customized authentication flow for an application on a Microsoft Entra external tenant. It defines whether a user can register (sign-up) or just sign-in, and is defined as part of a multi-event policy, [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md).

Inherits from [onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSignUpAllowed|Boolean|Optional. Specifies whether the authentication flow includes an option to sign up (create account) and sign in. Default value is `false` meaning only sign in is enabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
  "isSignUpAllowed": "Boolean"
}
```
