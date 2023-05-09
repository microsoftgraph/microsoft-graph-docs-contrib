---
title: "List attributes for an External Identities user flow"
description: "List attributes for an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List attributes of a user flow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection associated with an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) resource, or External Identities Self-Service-Sign-up User Flow.
**TODO: should this return attributecollectioninputconfigurations?**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.ReadWrite.All|
|Application|EventListener.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/AuthenticationEventsFlows/{authenticationEventsFlow-id}/externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Do not supply a request body for this method.


## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [identityUserFlowAttribute](../resources/identityuserflowattribute.md) in the response body. 

## Example
Retrieve list of attributes associated with a user flow.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authenticationeventsflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/
```


#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
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

