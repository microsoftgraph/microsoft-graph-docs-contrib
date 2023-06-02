---
title: "List attributes (of a user flow)"
description: "List attributes for an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List attributes (of a user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection associated with an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. These are the attributes that are collected from the user during the authentication experience that's defined by the user flow.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EventListener.ReadWrite.All|

[!INCLUDE [rbac-user-flows-convergence-apis-read](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/
```

## Optional query parameters

This method supports the `$filter`, `$expand`,  `$orderby`, and  `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Do not supply a request body for this method.


## Response

If successful, this method returns a `200 OK` response code and a new [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object in the response body. 

## Examples

#### Request
The following is an example of a request to retrieve the attributes associated with a user flow.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_onAttributeCollectionExternalUsersSelfServiceSignUp"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onattributecollectionexternalusersselfservicesignup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onattributecollectionexternalusersselfservicesignup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.identityUserFlowAttribute)",
    "value": [
        {
            "id": "email",
            "displayName": "Email Address",
            "description": "Email address of the user",
            "userFlowAttributeType": "builtIn",
            "dataType": "string"
        },
        {
            "id": "displayName",
            "displayName": "Display Name",
            "description": "Display Name of the User.",
            "userFlowAttributeType": "builtIn",
            "dataType": "string"
        },
        {
            "id": "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
            "displayName": "Favorite color",
            "description": "what is your favorite color",
            "userFlowAttributeType": "custom",
            "dataType": "string"
        }
    ]
}
```
