---
title: "Create authenticationEventsFlow"
description: "Create a new authenticationEventsFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create authenticationEventsFlow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authenticationEventsFlow](../resources/authenticationeventsflow.md) object that is of the type specified in the request body.

Among the types of authentication events flow objects derived from [authenticationEventsFlow](../resources/authenticationeventsflow.md), you can currently create an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.ReadWrite.All|
|Application|EventListener.ReadWrite.All|

The account needs to belong to one of the following roles:
<ul><li>Global Administrator
<li>External ID user flow administrator</ul>

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventsFlows
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) object.

### externalUsersSelfServiceSignupEventsFlow object

You can specify the following properties when creating an **authenticationEventsFlow**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Required. The display name for the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|description|String|Optional. The description of the events policy.Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**Optional?**. The conditions representing the context of the authentication request which will be used to decide whether the events policy will be invoked.Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|priority|Int32|The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Default is 500. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke for the onInteractiveAuthFlowStart event.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke for the onAuthenticationMethodLoadStart event.|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|Required. The configuration for what to invoke for the onAttributeCollection event.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke for the onUserCreateStart event.|


## Response

If successful, this method returns a `201 Created` response code and a JSON representation of an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) object in the response body.

## Example: Create an External Identities User Flow

### Request
The following is an example of a request.  In this example, the user flow created is named "TestUserFlow3" and is set up to (1) allow sign up and sign in, (2) allow users to create a local Email with Password account, or sign up with their Google or Facebook identity, (3) collect Display Name, and (3) create Member user type.
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventsflow_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "displayName": "Woodgrove Drive User Flow"",
    "onAuthenticationMethodLoadStart": {
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
        "identityProviders": [
            {
                "id": "Google-OAUTH"
            },
            {
                "id": "Facebook-OAUTH"
            },
            {
                "id": "EmailPassword-OAUTH"
            }
        ]
    },  
    "onInteractiveAuthFlowStart": {
        "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
        "isSignUpAllowed": true
    },
    "onAttributeCollection": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
        "attributes": [
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
            }
            {
                "id": "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
                "displayName": "Favorite color",
                "description": "what is your favorite color",
                "userFlowAttributeType": "custom",
                "dataType": "string"
            }
        ],
        "attributeCollectionPage": {
            "views": [
                {
                    "inputs": [
                        {
                            "attribute": "email",
                            "label": "Email Address",
                            "inputType": "Text",
                            "hidden": true,
                            "editable": false,
                            "writeToDirectory": true,
                            "required": true,
                            "validationRegEx": "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$"
                        },
                        {
                            "attribute": "city",
                            "label": "City",
                            "inputType": "text",
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
                        },
                        {
                            "attribute": "country",
                            "label": "Country/Region",
                            "inputType": "text",
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
                        },
                        {
                            "attribute": "displayName",
                            "label": "Display Name",
                            "inputType": "text",
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
                        }
                    ]
                }
            ]
        },
        "accessPackages": []
    },
    "onUserCreateStart": {
        "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
        "accessPackages": [],
        "userTypeToCreate": "member"
    }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventsFlow"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows/$entity",
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "0313cc37-d421-421d-857b-87804d61e33e",
    "displayName": "Woodgrove Drive User Flow",
    "description": null,
    "priority": 50,
    "onAttributeCollectionStart": null,
    "onAttributeCollectionSubmit": null,
    "tags": [],
    "conditions": {
        "applications": {
            "includeAllApplications": false
        }
    },
    "onInteractiveAuthFlowStart": {
        "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
        "isSignUpAllowed": true
    },
    "onAuthenticationMethodLoadStart": {
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
    },
    "onAttributeCollection": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
        "accessPackages": [],
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
                            "attribute": "country",
                            "label": "Country/Region",
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
                        }
                    ]
                }
            ]
        }
    },
    "onUserCreateStart": {
        "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
        "userTypeToCreate": "member",
        "accessPackages": []
    }
}
```

