---
title: "onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for the starting authentication step of an external identities user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a managed handler for the starting authentication step in an external identities user flow on a Microsoft Entra workforce or customer tenant. It defines whether a user can sign up, that is create an account; otherwise, a user will is only able to sign-in.

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
