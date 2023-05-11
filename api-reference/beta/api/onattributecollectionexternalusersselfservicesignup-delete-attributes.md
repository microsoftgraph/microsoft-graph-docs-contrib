---
title: "Remove attribute (from user flow)"
description: "Remove an attribute from an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Remove attribute (from user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an attribute from an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. You can add both custom and built-in attributes to a user flow.

This requires two calls – a DELETE to remove the attribute followed by a PATCH to remove the attribute from the display during sign-up. **TODO: HOW TO REPRESENT BOTH CALLS?**


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.ReadWrite.All|
|Application|EventListener.ReadWrite.All|

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
First call:
``` http
DELETE /identity/AuthenticationEventsFlows{authenticationEventsFlow-id}/externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref
```
Second call:
``` http
PATCH identity/AuthenticationEventsFlows/{authenticationEventsFlow-id}
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.  If unsuccessful, a `4xx` error will be returned with specific details.

## Example
Remove city as attribute for account creation.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authenticationeventsflow"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref

{
    "@odata.id":"https://graph.microsoft.com/beta/identity/userFlowAttributes/city"
} 
```


#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```