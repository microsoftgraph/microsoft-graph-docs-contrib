---
title: "List authenticationEventsFlows"
description: "Get a list of the authenticationEventsFlow objects and their properties."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List authenticationEventsFlows
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of authentication events policies that are derived from [authenticationEventsFlow](../resources/authenticationeventsflow.md). The authentication events flows can currently be [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) objects.
 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Application|EventListener.Read.All, EventListener.ReadWrite.All|

The account needs to belong to one of the following roles:
<ul><li>Global Administrator
<li>External Identity Provider Administrator 
<li>External ID user flow administrator</ul>

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventsFlows
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) objects in the response body.

## Example: List all External Identity User Flows

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventsflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows
```


### Response
The following is an example of the response.  In this example, two user flows are returned: Test User Flow 1, and Woodgrove Drive User Flow. The "Test User Flow 1" is set up to allow Email+password accounts, collect Email address and Country, and create Member user type.  The "Woodgrove Drive User Flow" is set up to allow Email+password accounts or Social (Google, Facebook) sign in, collect Email address Display Name, and Favorite Color, and create Member user.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationEventsFlow)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
        "id": "79a67c51-c86d-4a48-8313-1e14ac821e16",
        "displayName": "TestUserFlow1",
        "description": null,
        "priority": 50,
        "onAttributeCollectionStart": null,
        "onAttributeCollectionSubmit": null,
        "conditions": {
            "applications": {
                "includeAllApplications": false,
                "includeApplications@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('79a67c51-c86d-4a48-8313-1e14ac821e16')/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications",
                "includeApplications": []
            }
        },
        "onInteractiveAuthFlowStart": {
            "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
            "isSignUpAllowed": true
        },
        "onAuthenticationMethodLoadStart": {
            "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
            "identityProviders": [
                {
                    "@odata.type": "#microsoft.graph.builtInIdentityProvider",
                    "id": "EmailPassword-OAUTH",
                    "displayName": "Email with password",
                    "identityProviderType": "EmailPassword",
                    "state": null
                }
            ]
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
                                "attribute": "country",
                                "label": "Country/Region",
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
            },
            "attributes": [
                {
                    "id": "email",
                    "displayName": "Email Address",
                    "description": "Email address of the user",
                    "userFlowAttributeType": "builtIn",
                    "dataType": "string"
                },
                {
                    "id": "country",
                    "displayName": "Country/Region",
                    "description": "The country/region in which the user is located.",
                    "userFlowAttributeType": "builtIn",
                    "dataType": "string"
                }
            ]
        },
        "onUserCreateStart": {
            "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
            "userTypeToCreate": "member",
            "accessPackages": []
        }
    },
  {
  "value": {
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "0313cc37-d421-421d-857b-87804d61e33e",
    "displayName": "Woodgrove Drive User Flow",
    "description": "For onboarding consumers to the Woodgrove Drive application",
    "priority": 50,
    "onAttributeCollectionStart": null,
    "onAttributeCollectionSubmit": null,
    "conditions": {
        "applications": {
            "includeAllApplications": false,
            "includeApplications@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('0313cc37-d421-421d-857b-87804d61e33e')/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications",
            "includeApplications": []
        }
    },
    "onInteractiveAuthFlowStart": {
        "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
        "isSignUpAllowed": true
    },
    "onAuthenticationMethodLoadStart": {
      "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
      "identityProviders": [
          {
              "@odata.type": "#microsoft.graph.builtInIdentityProvider",
              "id": "EmailPassword-OAUTH",
              "displayName": "Email with password",
              "identityProviderType": "EmailPassword",
              "state": null
          }
          {
              "@odata.type": "#microsoft.graph.socialIdentityProvider",
              "id": "Google-OAUTH",
              "displayName": "Google",
              "identityProviderType": "Google",
              "clientId": "137004260525-q8j2cp9hqceqa6hpvaa346e04g92tn8m.apps.googleusercontent.com",
              "clientSecret": "******"
          },
          {
              "@odata.type": "#microsoft.graph.socialIdentityProvider",
              "id": "Facebook-OAUTH",
              "displayName": "Facebook",
              "identityProviderType": "Facebook",
              "clientId": "236028191057849",
              "clientSecret": "******"
          }
      ]
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
        },
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
        ]
    },
    "onUserCreateStart": {
        "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
        "userTypeToCreate": "member",
        "accessPackages": []
    }
  }
} 

  ]
}
```

