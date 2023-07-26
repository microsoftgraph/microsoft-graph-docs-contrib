---
title: "Add identityProvider (to a user flow)"
description: "Add an identity provider to an externalUsersSelfServiceSignupEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Add identityProvider (to a user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an identity provider to an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object type. The [identity provider must first be configured in the tenant](../api/identitycontainer-list-identityproviders.md).


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EventListener.ReadWrite.All|

[!INCLUDE [rbac-user-flows-convergence-apis-read](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the ID of the [identityProvider](../resources/identityproviderbase.md) you want to add. For self-service sign up user flows, the values can be `EmailPassword-OAUTH`, `EmailOtpSignup-OAUTH`, `Google-OAUTH` or `Facebook-OAUTH`.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

#### Request
The following is an example of a request that adds Google as identity provider option for account creation.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationeventsflow"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/$ref

{
    "@odata.id": "https://graph.microsoft.com/beta/identityProviders/Google-OAUTH"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authenticationeventsflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationeventsflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

