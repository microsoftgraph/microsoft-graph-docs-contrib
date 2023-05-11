---
title: "Add includeApplication (to a user flow)"
description: "Add application to an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Add includeApplication (to a user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add or link an application to an external identities self-service sign up user flow that's represented bby an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. This enables the authentication experience that's defined by the user flow to be enabled for the application. An application can only be linked to one user flow.


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
``` http
POST /identity/AuthenticationEventsFlows{authenticationEventsFlow-id}/externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the `id` of the [identityProvider](../resources/identityprovider.md) that you want to add. For self-service sign up user flows, the values can be `EmailPassword-OAUTH`, `EmailOtpSignup-OAUTH`, `Google-OAUTH` or `Facebook-OAUTH`.

## Response

If successful, this method returns a `201 Created` response code.  If unsuccessful, a `4xx` error will be returned with specific details.

## Example

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authenticationeventsflow"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications
{
    "@odata.type": "#microsoft.graph.authenticationConditionApplication",
    "appId": "{application-id}"
}

```


#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationConditionApplication"
}
-->
``` http
HTTP/1.1 201 Created
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('{authenticationEventsFlow-id}')/conditions/applications/includeApplications/$entity",
    "appId": "{application-id}"
}
```

