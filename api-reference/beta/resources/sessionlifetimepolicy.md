---
title: "sessionlifetimepolicy resource type"
description: "Describes the session lifetime policies Azure AD applied to a sign-in event."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# sessionlifetimepolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the session lifetime policies Azure AD applied to a sign-in event. 

For more details about session management with conditional access in Azure AD, see the [conditional access session management documentation](/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationRequirement|expirationRequirement|If a conditional access session management policy required the user to authenticate in this sign-in event, this field describes the policy type that required authentication. The possible values are: `rememberMultifactorAuthenticationOnTrustedDevices`, `tenantTokenLifetimePolicy`, `audienceTokenLifetimePolicy`, `signInFrequencyPeriodicReauthentication`, `ngcMfa`, `signInFrequencyEveryTime`, `unknownFutureValue`.|
|detail|String|The human-readable details of the conditional access session management policy applied to the sign-in.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sessionLifetimePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sessionLifetimePolicy",
  "expirationRequirement": "String",
  "detail": "String"
}
```

