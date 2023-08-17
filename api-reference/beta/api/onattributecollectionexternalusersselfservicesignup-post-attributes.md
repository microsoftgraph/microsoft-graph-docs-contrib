---
title: "Add attribute (to user flow)"
description: "Add attribute to an externalUsersSelfServiceSignupEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Add attribute (to user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an attribute to an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. You can add both custom and built-in attributes to a user flow.

Prior to this step, [PATCH the user flow](../api/authenticationeventsflow-update.md) to add the attribute to the attribute collection step (to determine how it will be displayed).

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
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply an **odata.id** property with the ID of the [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object to add to the user flow.

## Response
If successful, this method returns a `204 No Content` response code.  If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

#### Request

The following is an example of a request that adds city as an attribute for attribute collection step of an external identities self-service sign-up user flow. Before you can add an attribute to the attribute collection step, you must first [add it among the attributes to be collected in the user flow](../api/authenticationeventsflow-update.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onAttributeCollectionExternalUsersSelfServiceSignUp_post_attributes"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref

{
    "@odata.id":"https://graph.microsoft.com/beta/identity/userFlowAttributes/city"
} 

```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onattributecollectionexternalusersselfservicesignup-post-attributes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onattributecollectionexternalusersselfservicesignup-post-attributes-javascript-snippets.md)]
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
