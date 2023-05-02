---
title: "onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Derived from onInteractiveAuthFlowStartHandler. Defines possible handler config for the event This is a 'managed' handler that addresses the ability to configure whether sign up is allowed for a user going through this authentication flow. (It will be invoked to determine whether an authentication flow is enabled for sign up.) This is a complex type.



Inherits from [onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md).

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

