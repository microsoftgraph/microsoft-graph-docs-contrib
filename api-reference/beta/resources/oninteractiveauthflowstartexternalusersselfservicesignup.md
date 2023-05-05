---
title: "onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for the starting step of an external identities user flow"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a 'managed' handler for the starting step in an external identities user flow on an AD workforce or customer tenant.  It defines whether a user can sign up, i.e. create an account. (Otherwise, a user will only be able to sign-in.)

Inherits from [onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md). Complex type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSignUpAllowed|Boolean|Optional.  Specifes whether authentication flow includes option to sign up (create account) as well as sign in. Default value is false.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

