---
title: "Get authenticationEventsFlow"
description: "Read the properties and relationships of an authenticationEventsFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get authenticationEventsFlow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a specific [authenticationEventsFlow](../resources/authenticationeventsflow.md) object by ID.

Among the types of authentication events flow objects derived from [authenticationEventsFlow](../resources/authenticationeventsflow.md), you can currently retrieve an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Application|EventListener.Read.All, EventListener.ReadWrite.All|

The account needs to belong to one of the following roles:
<ul><li>Global Administrator
<li>External ID user flow administrator</ul>

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventsFlows/{authenticationEventsFlow-id}
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

If successful, this method returns a `200 OK` response code and a JSON representation of [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) object in the response body.

## Example: Retrieve a specific External Identities User Flow

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_authenticationeventsflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e
```


### Response
The following is an example of the response. In this example, the user flow retrieved is named "Woodgrove Drive Users Flow" and is set up to (1) allow users to create a local Email with Password account, or sign up with their Google or Facebook identity, (2) collect Display Name and Favorite Color, and (3) create Member user type.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventsFlow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

