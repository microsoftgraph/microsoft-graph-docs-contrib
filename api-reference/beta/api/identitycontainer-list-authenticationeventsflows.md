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

Get a collection of authentication events policies that are derived from [authenticationEventsFlow](../resources/authenticationeventsflow.md). Only the [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object type is returned.
 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EventListener.Read.All, EventListener.ReadWrite.All|

[!INCLUDE [rbac-user-flows-convergence-apis-read](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventsFlows
```

## Optional query parameters

This method supports the `$filter`, `$expand`,  `$orderby`, and  `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationEventsFlow](../resources/authenticationeventsflow.md) objects in the response body.

## Examples

### Example 1: List all user flows

#### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventsflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationeventsflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationeventsflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationeventsflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationeventsflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationeventsflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationeventsflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationeventsflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of a response that returns two user flows: "Test User Flow 1" and "Woodgrove Drive User Flow" with the following configurations:

- "Test User Flow 1" is set up to allow email+password accounts, collect email address and country, and create a "Member" user type.
- "Woodgrove Drive User Flow" is set up to allow email+password accounts or social (Google or Facebook) sign in, collect email address, display name, and favorite color, and create "Member" user type.

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
                "userTypeToCreate": "member"
            }
        },
        {
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
                    },
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
                    },
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
                "userTypeToCreate": "member"
            }
        }
    ]
}
```

### Example 2: List all user flows that include Google as an identity provider

#### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventsflow_selfservicesignup_identityproviders"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/any(idp:idp/id eq 'Google-OAUTH')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationeventsflow-selfservicesignup-identityproviders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationeventsflow-selfservicesignup-identityproviders-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationeventsflow-selfservicesignup-identityproviders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationeventsflow-selfservicesignup-identityproviders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationeventsflow-selfservicesignup-identityproviders-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationeventsflow-selfservicesignup-identityproviders-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationeventsflow-selfservicesignup-identityproviders-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of a response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows",
    "value": [
        {
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
                    },
                    {
                        "@odata.type": "#microsoft.graph.socialIdentityProvider",
                        "id": "Google-OAUTH",
                        "displayName": "Google",
                        "identityProviderType": "Google",
                        "clientId": "############-q8j2cp9hqceqa6hpvaa346e04g92tn8m.apps.googleusercontent.com",
                        "clientSecret": "******"
                    },
                    {
                        "@odata.type": "#microsoft.graph.socialIdentityProvider",
                        "id": "Facebook-OAUTH",
                        "displayName": "Facebook",
                        "identityProviderType": "Facebook",
                        "clientId": "###############",
                        "clientSecret": "******"
                    }
                ]
            },
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
                    },
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
                "userTypeToCreate": "member"
            }
        }
    ]
}
```

### Example 3: List all user flows that collect 'city' during attribute collection at account creation

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventsflow_filter_selfservicesignup_attributes"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq 'city')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationeventsflow-filter-selfservicesignup-attributes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationeventsflow-filter-selfservicesignup-attributes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationeventsflow-filter-selfservicesignup-attributes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationeventsflow-filter-selfservicesignup-attributes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationeventsflow-filter-selfservicesignup-attributes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationeventsflow-filter-selfservicesignup-attributes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationeventsflow-filter-selfservicesignup-attributes-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of a response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows",
    "value": [
        {
            "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
            "id": "0313cc37-d421-421d-857b-87804d61e33e",
            "displayName": "TestUserFlow3",
            "description": "my user flow description newestXXX",
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
                        "id": "AADSignup-OAUTH",
                        "displayName": "Azure Active Directory Sign up",
                        "identityProviderType": "AADSignup",
                        "state": null
                    },
                    {
                        "@odata.type": "#microsoft.graph.builtInIdentityProvider",
                        "id": "EmailPassword-OAUTH",
                        "displayName": "Email with password",
                        "identityProviderType": "EmailPassword",
                        "state": null
                    },
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
                        "id": "city",
                        "displayName": "City",
                        "description": "The city in which the user is located.",
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
                ]
            },
            "onUserCreateStart": {
                "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
                "userTypeToCreate": "member"
            }
        },
        {
            "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
            "id": "f5b9b311-cb87-445b-a655-e6e6a4d3e582",
            "displayName": "TestUserFlow4",
            "description": null,
            "priority": 50,
            "onAttributeCollectionStart": null,
            "onAttributeCollectionSubmit": null,
            "conditions": {
                "applications": {
                    "includeAllApplications": false,
                    "includeApplications@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('f5b9b311-cb87-445b-a655-e6e6a4d3e582')/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications",
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
                        "id": "city",
                        "displayName": "City",
                        "description": "The city in which the user is located.",
                        "userFlowAttributeType": "builtIn",
                        "dataType": "string"
                    },
                    {
                        "id": "country",
                        "displayName": "Country/Region",
                        "description": "The country/region in which the user is located.",
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
                ]
            },
            "onUserCreateStart": {
                "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
                "userTypeToCreate": "member"
            }
        }
    ]
}
```

### Example 4: List user flow associated with specific application ID

#### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventsflow_filter_includeapplications"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq '63856651-13d9-4784-9abf-20758d509e19')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationeventsflow-filter-includeapplications-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationeventsflow-filter-includeapplications-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationeventsflow-filter-includeapplications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationeventsflow-filter-includeapplications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationeventsflow-filter-includeapplications-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationeventsflow-filter-includeapplications-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationeventsflow-filter-includeapplications-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of a response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows",
    "value": [
        {
            "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
            "id": "b5ca7ddb-f5e4-4dea-8ee5-282116ddc71d",
            "displayName": "Test User Flow",
            "description": null,
            "priority": 500,
            "onAttributeCollectionStart": null,
            "onAttributeCollectionSubmit": null,
            "conditions": {
                "applications": {
                    "includeAllApplications": false,
                    "includeApplications@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('b5ca7ddb-f5e4-4dea-8ee5-282116ddc71d')/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications",
                    "includeApplications": [
                        {
                            "appId": "63856651-13d9-4784-9abf-20758d509e19"
                        }
                    ]
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
                                    "validationRegEx": "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$",
                                    "options": []
                                },
                                {
                                    "attribute": "extension_6ea3bc85aec24b1c92ff4a117afb6621_RewardsNumber",
                                    "label": "Rewards number",
                                    "inputType": "text",
                                    "defaultValue": null,
                                    "hidden": false,
                                    "editable": true,
                                    "writeToDirectory": true,
                                    "required": false,
                                    "validationRegEx": "^.*",
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
                        "id": "extension_6ea3bc85aec24b1c92ff4a117afb6621_RewardsNumber",
                        "displayName": "RewardsNumber",
                        "description": null,
                        "userFlowAttributeType": "custom",
                        "dataType": "string"
                    },
                    {
                        "id": "displayName",
                        "displayName": "Display Name",
                        "description": "Display Name of the User.",
                        "userFlowAttributeType": "builtIn",
                        "dataType": "string"
                    }
                ]
            },
            "onUserCreateStart": {
                "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
                "userTypeToCreate": "member"
            }
        }
    ]
}
```
