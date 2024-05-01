---
title: "Create authenticationEventsFlow"
description: "Create a new authenticationEventsFlow object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create authenticationEventsFlow
Namespace: microsoft.graph

Create a new [authenticationEventsFlow](../resources/authenticationeventsflow.md) object that is of the type specified in the request body. You can create only an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object type.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_post_authenticationeventsflows" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-post-authenticationeventsflows-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) object.

You can specify the following properties when creating an **authenticationEventsFlow**. You must include the **@odata.type** property with a value of the specific user flow type in the body. For example, `"@odata.type": "#microsoft.graph.externalUsersSelfServiceSignupEventsFlow"`.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Required. The display name for the events policy. Must be unique.|
|description|String|Optional. The description of the events policy.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Optional. The conditions representing the context of the authentication request which is used to decide whether the events policy is invoked.|
|priority|Int32|Optional. The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Default is 500. |
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke when an authentication flow is ready to be initiated. |
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|Optional. The configuration for what to invoke when attributes are ready to be collected from the user.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|Optional. The configuration for what to invoke during user creation.|

## Response

If successful, this method returns a `201 Created` response code and a JSON representation of an [authenticationEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object in the response body. An **@odata.type** property with the value of the specific user flow type created is included in the response body. For example, `"@odata.type": "#microsoft.graph.externalUsersSelfServiceSignupEventsFlow"`.

## Examples

<a name='example-1-create-a-basic-external-identities-sign-up-and-sign-in-user-flow-on-an-azure-ad-customer-tenant'></a>

### Example 1: Create a basic External Identities sign-up and sign-in user flow on a Microsoft Entra customer tenant

#### Request
The following example shows a request. In this example, you create a user flow named "Woodgrove User Flow" with the following configuration.

- Allow sign up and sign in.
- Allow users to create a local email with password account.
- Collect the **Display Name** built-in attribute from the user.
- Defines how the attributes to be collected will be displayed to the user.

<!-- {
  "blockType": "request",
  "name": "create_authenticationeventsflow_selfservicesignup"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "displayName": "Woodgrove Drive User Flow",
    "onAuthenticationMethodLoadStart": {
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
        "identityProviders": [
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
        }
    }
}
```

#### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventsFlows/$entity",
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "0313cc37-d421-421d-857b-87804d61e33e",
    "displayName": "Woodgrove Drive User Flow",
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
    }
}
```

<a name='example-2-create-a-basic-external-identities-sign-up-and-sign-in-user-flow-with-an-attached-application-on-an-azure-ad-customer-tenant'></a>

### Example 2: Create a basic external identities sign-up and sign-in user flow with an attached application on a Microsoft Entra customer tenant

#### Request
The following example shows a request. In this example, you create a user flow named "Woodgrove User Flow" with the following configuration.

- Allow sign up and sign in.
- Allow users to create a local email with password account.
- Collect the **Display Name** built-in attribute from the user.
- Defines how the attributes to be collected will be displayed to the user.

<!-- {
  "blockType": "request",
  "name": "create_authenticationeventsflow_selfservicesignup_includeapplications"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "displayName": "Woodgrove Drive User Flow",
    "conditions": {
        "applications": {
            "includeApplications": [
                {
                    "appId": "63856651-13d9-4784-9abf-20758d509e19"
                }
            ]
        }
    },
    "onAuthenticationMethodLoadStart": {
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
        "identityProviders": [
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
        }
    }
}
```

#### Response
The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventsFlows/$entity",
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "1d51b447-eb52-4ec8-ae4e-0a35ebc148ea",
    "displayName": "Woodgrove Drive User Flow",
    "description": null,
    "priority": 500,
    "onAttributeCollectionStart": null,
    "onAttributeCollectionSubmit": null,
    "onUserCreateStart": null,
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
    }
}
```

### Example 3: Create an External Identities sign-up and sign-in user flow with social providers and a custom attribute

#### Request

The following example shows a request. In this example, you create a user flow named "Woodgrove Drive User Flow" with the following configuration

- Allow sign up and sign in.
- Allow users to create a local email with password account, or authenticate with Google or Facebook
- Collect the **Display Name** built-in attribute and a **Favorite Color** custom attribute.

<!-- {
  "blockType": "request",
  "name": "create_authenticationeventsflow__selfservicesignup_socialproviders_customattribute"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "displayName": "Woodgrove User Flow 2",
    "onAuthenticationMethodLoadStart": {
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
        "identityProviders": [
            {
                "id": "EmailPassword-OAUTH"
            },
            {
                "id": "Google-OAUTH"
            },
            {
                "id": "Facebook-OAUTH"
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
            },
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
                            "attribute": "displayName",
                            "label": "Display Name",
                            "inputType": "text",
                            "hidden": false,
                            "editable": true,
                            "writeToDirectory": true,
                            "required": false,
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
                        },
                        {
                            "attribute": "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
                            "label": "Favorite color",
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
        }
    }
}
```


#### Response
The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventsFlows/$entity",
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "{authentictionEventsFlow-id}",
    "displayName": "Woodgrove User Flow 2",
    "description": null,
    "priority": 500,
    "onAttributeCollectionStart": null,
    "onAttributeCollectionSubmit": null,
    "onUserCreateStart": null,
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
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
                            "options": []
                        }
                    ]
                }
            ]
        }
    }
}
```
