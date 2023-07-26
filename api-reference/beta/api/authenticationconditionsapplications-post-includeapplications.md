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

Add or link an application to an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. This enables the authentication experience that's defined by the user flow to be enabled for the application. An application can only be linked to one user flow.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EventListener.ReadWrite.All|

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the **appId** of the application to associate with the user flow.

## Response

If successful, this method returns a `201 Created` response code and a new [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_includeapplications"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.authenticationConditionApplication",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}

```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-includeapplications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-includeapplications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.authenticationConditionApplication",
  "truncated": true,
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('0313cc37-d421-421d-857b-87804d61e33e')/conditions/applications/includeApplications/$entity",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}
```
