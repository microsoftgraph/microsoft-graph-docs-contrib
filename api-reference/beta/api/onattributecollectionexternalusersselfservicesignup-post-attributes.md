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

This requires two calls – a PATCH to add the attribute followed by a POST to add how the attribute will be displayed for sign-up. **TODO: HOW TO REPRESENT BOTH CALLS?**


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
PATCH identity/AuthenticationEventsFlows/{authenticationEventsFlow-id}
```
Second call:
``` http
POST /identity/AuthenticationEventsFlows{authenticationEventsFlow-id}/externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [onAttributeCollectionExternalUsersSelfServiceSignUp](../resources/onAttributeCollectionExternalUsersSelfServiceSignUp.md) object.

You can specify the following properties when creating an **onAttributeCollectionExternalUsersSelfServiceSignUp**.

|Property|Type|Description|
|:---|:---|:---|
|attributeCollectionPage|[authenticationAttributeCollectionPage](../resources/authenticationattributecollectionpage.md)|Required. The configuration for how attributes are displayed in the sign up experience defined by a user flow, or [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md), specifically on the attribute collection page.|

## Response
If successful, this method returns a `204 No Content` response code.  If unsuccessful, a `4xx` error will be returned with specific details.

## Example

#### Request
The following is an example of a request that adds city as an attribute for account creation.
<!-- {
  "blockType": "request",
  "name": "create_onAttributeCollectionExternalUsersSelfServiceSignUp"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/authenticationEventsFlows/{authenticationEventsFlow-id}

{
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "onAttributeCollection": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
        "attributeCollectionPage": {
            "customStringsFileId": null,
            "views": [
                {
                    "title": null,
                    "description": null,
                    "inputs": [
                        {
                            "attribute": "email",
                            "label": "Email Address",
                            "inputType": "text",
                            "defaultValue": null,
                            "hidden": true,
                            "editable": false,
                            "writeToDirectory": true,
                            "required": true,
                            "validationRegEx": "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
                            "options": []
                        },
                        {
                            "attribute": "city",
                            "label": "City",
                            "inputType": "text",
                            "defaultValue": null,
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
                            "options": []
                        },
                        {
                            "attribute": "displayName",
                            "label": "Display Name",
                            "inputType": "text",
                            "defaultValue": null,
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
                            "options": []
                        },
                        {
                            "attribute": "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
                            "label": "Favorite color",
                            "inputType": "text",
                            "defaultValue": null,
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^.*",
                            "options": []
                        }
                    ]
                }
            ]
        }
    }
}
```

``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref

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