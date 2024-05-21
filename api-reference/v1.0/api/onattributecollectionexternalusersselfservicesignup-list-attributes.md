---
title: "List attributes (of a user flow)"
description: "List attributes for an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List attributes (of a user flow)
Namespace: microsoft.graph


Get an [identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection associated with an external identities self-service user flow represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. These attributes are collected from the user during the authentication experience defined by the user flow.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onattributecollectionexternalusersselfservicesignup_list_attributes" } -->
[!INCLUDE [permissions-table](../includes/permissions/onattributecollectionexternalusersselfservicesignup-list-attributes-permissions.md)]

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

This method supports the `$filter`, `$expand`,  `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
Don't supply a request body for this method.


## Response

If successful, this method returns a `200 OK` response code and a new [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object in the response body. 

If no user flow attributes are assigned to the user flow, this method returns a `400 Bad Request` error code.

## Examples

#### Request
The following example shows a request to retrieve the attributes associated with a user flow.
<!-- {
  "blockType": "request",
  "name": "get_onAttributeCollectionExternalUsersSelfServiceSignUp"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/
```
---

#### Response
The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.identityUserFlowAttribute)",
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
