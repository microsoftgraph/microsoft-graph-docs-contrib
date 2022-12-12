---
title: "authenticationAppPolicyDetails resource type"
description: "Provides details of the Azure AD policies applied to a user and client authentication app during the authentication step."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationAppPolicyDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details of the Azure AD policies applied to a user and client authentication app during the authentication step.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminConfiguration|authenticationAppAdminConfiguration|The admin configuration of the policy on the user's authentication app. For a policy that does not impact the success/failure of the authentication, the evaluation defaults to `notApplicable`. The possible values are: `notApplicable`, `enabled`, `disabled`, `unknownFutureValue`.|
|authenticationEvaluation|authenticationAppEvaluation|Evaluates the success/failure of the authentication based on the admin configuration of the policy on the user's client authentication app. The possible values are: `success`, `failure`, `unknownFutureValue`.|
|policyName|String|The name of the policy enforced on the user's authentication app.|
|status|authenticationAppPolicyStatus|Refers to whether the policy executed as expected on the user's client authentication app. The possible values are: `unknown`, `appLockOutOfDate`, `appLockEnabled`, `appLockDisabled`, `appContextOutOfDate`, `appContextShown`, `appContextNotShown`, `locationContextOutOfDate`, `locationContextShown`, `locationContextNotShown`, `numberMatchOutOfDate`, `numberMatchCorrectNumberEntered`, `numberMatchIncorrectNumberEntered`, `numberMatchDeny`, `tamperResistantHardwareOutOfDate`, `tamperResistantHardwareUsed`, `tamperResistantHardwareNotUsed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAppPolicyDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAppPolicyDetails",
  "policyName": "String",
  "adminConfiguration": "String",
  "status": "String",
  "authenticationEvaluation": "String"
}
```

