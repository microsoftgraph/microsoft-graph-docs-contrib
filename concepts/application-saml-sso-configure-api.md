---
title: "Configure SAML-based single sign-on using Microsoft Graph"
description: "Learn how to automate configuration of SAML-based single sign-on (SSO) for your Microsoft Entra application using Microsoft Graph APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: alamaral
ms.localizationpriority: high
ms.topic: tutorial
ms.custom: scenarios:getting-started
ms.subservice: entra-applications
ms.date: 02/23/2024
#customer intent: As a developer, I want to configure SAML-based single sign-on for my application using Microsoft Graph, so that I can improve usability of apps by enabling secure authentication and authorization for users.
---

# Configure SAML-based single sign-on for your application using Microsoft Graph

Single sign-on (SSO) is an authentication method that allows users to sign in to one application and then access multiple applications without needing to sign in again. Microsoft Entra supports various SSO methods, including OpenID Connect, OAuth, Security Assertion Markup Language (SAML), password-based, and linked SSO. Using Microsoft Graph, you can automate the configuration of SSO for your application.

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Identify SAML-based apps in the Microsoft Entra gallery and configure SAML-based SSO for an app
> * Add app roles to an application and grant them to users
> * Configure claims to emit in the SAML token
> * Configure a certificate for federated SSO
> * Retrieve the Microsoft Entra ID SAML metadata for your application that you use to complete the integration

## Prerequisites

- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) as a user with Cloud Application Administrator role in your Microsoft Entra tenant.
- Grant yourself the following delegated permissions: `Application.ReadWrite.All`, `AppRoleAssignment.ReadWrite.All`, `Policy.Read.All`, `Policy.ReadWrite.ApplicationConfiguration`, and `User.ReadWrite.All`.
- Have a test user to assign to the application.

## Step 1: Identify the application to configure

Microsoft Entra ID has a gallery that contains thousands of preintegrated applications that you can use as a template for your application. In Microsoft Graph, this list is available through the **applicationTemplate** entity.

In this step, you identify the application template for the `AWS IAM Identity Center (successor to AWS Single Sign-On)` application that you want to configure. Record its **id**.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_applicationtemplates_get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applicationTemplates?$filter=displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-applicationtemplates-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-applicationtemplates-get-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-applicationtemplates-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-applicationtemplates-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-applicationtemplates-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-applicationtemplates-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-applicationtemplates-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-applicationtemplates-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationTemplates"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applicationTemplates",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applicationTemplates?$select=categories,description",
    "value": [
        {
            "id": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
            "displayName": "AWS IAM Identity Center (successor to AWS Single Sign-On)",
            "homePageUrl": "https://aws.amazon.com/",
            "supportedSingleSignOnModes": [
                "saml",
                "external"
            ],
            "supportedProvisioningTypes": [
                "sync"
            ],
            "logoUrl": "https://galleryapplogos1.azureedge.net/app-logo/awssinglesignon_FC86917E_215.png",
            "categories": [
                "developerServices",
                "itInfrastructure",
                "security",
                "New"
            ],
            "publisher": "Amazon Web Services, Inc.",
            "description": "Federate once to AWS IAM Identity Center (successor to AWS Single Sign-On) & use it to centrally manage access to multiple AWS accounts and IAM Identity Center enabled apps. Provision users via SCIM."
        }
    ]
}
```

## Step 2: Instantiate the application

Using the **id** value for the application template, create an instance of the application in your tenant. Here, you name the application **AWS Contoso**. The response includes an application and service principal object for **AWS Contoso**, which is an instance of the **AWS IAM Identity Center (successor to AWS Single Sign-On)** app. Record the IDs of the two objects for use later in this tutorial.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_applicationtemplate.instantiate"
}-->
```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/21ed01d2-ec13-4e9e-86c1-cd546719ebc4/instantiate
Content-type: application/json

{
  "displayName": "AWS Contoso"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-applicationtemplateinstantiate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.applicationServicePrincipal",
    "application": {
        "id": "b7308000-8bb3-467b-bfc7-8dbbfd759ad9",
        "appId": "2fbc8259-0f56-4f56-9870-93a228020936",
        "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
        "createdDateTime": "2024-02-21T17:14:33Z",
        "deletedDateTime": null,
        "displayName": "AWS Contoso",
        "description": null,
        "groupMembershipClaims": null,
        "identifierUris": [],
        "isFallbackPublicClient": false,
        "signInAudience": "AzureADMyOrg",
        "tags": [],
        "tokenEncryptionKeyId": null,
        "defaultRedirectUri": null,
        "samlMetadataUrl": null,
        "optionalClaims": null,
        "addIns": [],
        "api": {
            "acceptMappedClaims": null,
            "knownClientApplications": [],
            "requestedAccessTokenVersion": null,
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allow the application to access AWS Contoso on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Access AWS Contoso",
                    "id": "f5419931-094d-481d-b801-ab3ed60d48d8",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allow the application to access AWS Contoso on your behalf.",
                    "userConsentDisplayName": "Access AWS Contoso",
                    "value": "user_impersonation"
                }
            ],
            "preAuthorizedApplications": []
        },
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "User",
                "id": "8774f594-1d59-4279-b9d9-59ef09a23530",
                "isEnabled": true,
                "description": "User",
                "value": null,
                "origin": "Application"
            },
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "e7f1a7f3-9eda-48e0-9963-bd67bf531afd",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "parentalControlSettings": {
            "countriesBlockedForMinors": [],
            "legalAgeGroupRule": "Allow"
        },
        "passwordCredentials": [],
        "publicClient": {
            "redirectUris": []
        },
        "requiredResourceAccess": [],
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "web": {
            "homePageUrl": "https://*.signin.aws.amazon.com/platform/saml/acs/*?metadata=awssinglesignon|ISV9.1|primary|z",
            "redirectUris": [
                "https://*.signin.aws.amazon.com/platform/saml/acs/*"
            ],
            "logoutUrl": null
        }
    },
    "servicePrincipal": {
        "id": "d3616293-fff8-4415-9f01-33b05dad1b46",
        "deletedDateTime": null,
        "accountEnabled": true,
        "appId": "2fbc8259-0f56-4f56-9870-93a228020936",
        "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
        "appDisplayName": "AWS Contoso",
        "alternativeNames": [],
        "appOwnerOrganizationId": "38d49456-54d4-455d-a8d6-c383c71e0a6d",
        "displayName": "AWS Contoso",
        "appRoleAssignmentRequired": true,
        "loginUrl": null,
        "logoutUrl": null,
        "homepage": "https://*.signin.aws.amazon.com/platform/saml/acs/*?metadata=awssinglesignon|ISV9.1|primary|z",
        "notificationEmailAddresses": [],
        "preferredSingleSignOnMode": null,
        "preferredTokenSigningKeyThumbprint": null,
        "replyUrls": [],
        "servicePrincipalNames": [
            "2fbc8259-0f56-4f56-9870-93a228020936"
        ],
        "servicePrincipalType": "Application",
        "tags": [
            "WindowsAzureActiveDirectoryIntegratedApp"
        ],
        "tokenEncryptionKeyId": null,
        "samlSingleSignOnSettings": null,
        "addIns": [],
        "appRoles": [
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "User",
                "id": "8774f594-1d59-4279-b9d9-59ef09a23530",
                "isEnabled": true,
                "description": "User",
                "value": null,
                "origin": "Application"
            },
            {
                "allowedMemberTypes": [
                    "User"
                ],
                "displayName": "msiam_access",
                "id": "e7f1a7f3-9eda-48e0-9963-bd67bf531afd",
                "isEnabled": true,
                "description": "msiam_access",
                "value": null,
                "origin": "Application"
            }
        ],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "oauth2PermissionScopes": [
            {
                "adminConsentDescription": "Allow the application to access AWS Contoso on behalf of the signed-in user.",
                "adminConsentDisplayName": "Access AWS Contoso",
                "id": "f5419931-094d-481d-b801-ab3ed60d48d8",
                "isEnabled": true,
                "type": "User",
                "userConsentDescription": "Allow the application to access AWS Contoso on your behalf.",
                "userConsentDisplayName": "Access AWS Contoso",
                "value": "user_impersonation"
            }
        ],
        "passwordCredentials": [],
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        }
    }
}
```

## Step 3: Configure single sign-on

In this step, you configure SSO for both the AWS Contoso application and the service principal. For the application, you configure the SAML URLs while for the service principal, you set the SSO mode to `saml`.

### Step 3.1: Set single sign-on mode for the service principal

Set `saml` as the SSO mode for the service principal you created in Step 2. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_serviceprincipal"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46
Content-type: application/json

{
  "preferredSingleSignOnMode": "saml"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-update-serviceprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-update-serviceprincipal-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-update-serviceprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-update-serviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-update-serviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-update-serviceprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-update-serviceprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-update-serviceprincipal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Step 3.2: Set basic SAML URLs for the application

In this step, set the **web**/**redirectUris** and **web**/**redirectUris** for the application you created in Step 2. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_application"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/b7308000-8bb3-467b-bfc7-8dbbfd759ad9
Content-type: application/json

{
    "identifierUris": [
        "https://signin.aws.amazon.com/saml"
    ],
    "web": {
        "redirectUris": [
            "https://signin.aws.amazon.com/saml"
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-update-application-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-update-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-update-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 4: Add app roles

If the application requires the role information in the token, add the definition of the roles in the application object. By default, the **appRoles** object in the application and service principal in Step 2 included the default `User` and `msiam_access` roles. Don't modify or remove them. To add mode roles, you must include both the existing roles and the new roles in the **appRoles** object in the request, otherwise, the existing roles are replaced.

In this step, add the `Finance,WAAD` and `Admin,WAAD` roles to the AWS Contoso service principal. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_servicepricipal_approles"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46
Content-type: application/json

{
    "appRoles": [
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "User",
            "displayName": "User",
            "id": "8774f594-1d59-4279-b9d9-59ef09a23530",
            "isEnabled": true,
            "origin": "Application",
            "value": null
        },
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "msiam_access",
            "displayName": "msiam_access",
            "id": "e7f1a7f3-9eda-48e0-9963-bd67bf531afd",
            "isEnabled": true,
            "origin": "Application",
            "value": null
        },
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "Admin,WAAD",
            "displayName": "Admin,WAAD",
            "id": "3a84e31e-bffa-470f-b9e6-754a61e4dc63",
            "isEnabled": true,
            "value": "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD"
        },
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "Finance,WAAD",
            "displayName": "Finance,WAAD",
            "id": "7a960000-ded3-455b-8c04-4f2ace00319b",
            "isEnabled": true,
            "value": "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-update-servicepricipal-approles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 5: Configure claims mapping

You want to configure the SAML attributes by mapping the Microsoft Entra ID fields with specific AWS IAM Identity Center application attributes. You therefore create a claims mapping policy and assign it to the service principal.

### Step 5.1: Create a claims mapping policy

In addition to the basic claims, configure the following claims for Microsoft Entra ID to emit in the SAML token:

| Claim name                                                             | Source            |
|------------------------------------------------------------------------|-------------------|
| `https://aws.amazon.com/SAML/Attributes/Role`                          | `assignedroles`     |
| `https://aws.amazon.com/SAML/Attributes/RoleSessionName`               | `userprincipalname` |
| `https://aws.amazon.com/SAML/Attributes/SessionDuration`               | `"900"`             |
| `appRoles`                                                             | `assignedroles`     |
| `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier` | `userprincipalname` |

> [!NOTE]
> Some keys in the claims mapping policy, such as **Version**, are case sensitive. The error message "Property has an invalid value" might be a case sensitivity issue.

Create the claims mapping policy and record its ID for use later in this tutorial.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_create_claimsmappingpolicy"
}-->
```http
POST https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies
Content-type: application/json

{
    "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\", \"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Value\":\"900\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"appRoles\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
    "displayName": "AWS Claims Policy",
    "isOrganizationDefault": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-create-claimsmappingpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.claimsMappingPolicy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/claimsMappingPolicies/$entity",
    "id": "92037c7a-a875-49a0-814e-8ec30f880e2e",
    "deletedDateTime": null,
    "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\", \"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Value\":\"900\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"appRoles\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
    "displayName": "AWS Claims Policy",
    "isOrganizationDefault": false
}
```

### Step 5.2: Assign the claims mapping policy to the service principal

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_assign_serviceprincipal_claimsmappingpolicy"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/ef04fead-8549-4e59-b5f7-d1d8c697ec64/claimsMappingPolicies/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 6: Configure a signing certificate

You need a certificate that Microsoft Entra ID can use to sign a SAML response. You can use the `/addTokenSigningCertificate` endpoint to [create a token signing certificate for the service principal](#option-1-create-a-token-signing-certificate-for-the-service-principal). Alternatively, you can [create a self-signed certificate and upload it to the service principal](#option-2-create-a-custom-signing-certificate).

After you add the certificate, the service principal contains two objects in the **keyCredentials** collection: one for the private key and one for the public key; and an object in the **passwordCredentials** collection for the certificate password.

### Option 1: Create a token signing certificate for the service principal

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_create_addtokensigningcertificate"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46/addTokenSigningCertificate
Content-type: application/json

{
    "displayName": "CN=AWSContoso",
    "endDateTime": "2027-01-22T00:00:00Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-create-addtokensigningcertificate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.selfSignedCertificate"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.selfSignedCertificate",
    "customKeyIdentifier": "wt3YBEyVas0CaadaZLeGLbndrD4=",
    "displayName": "CN=AWSContoso",
    "endDateTime": "2027-01-22T00:00:00Z",
    "key": "MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=",
    "keyId": "04e5ac4e-31f9-41ad-83e2-6dd41e1d81f4",
    "startDateTime": "2024-02-21T17:09:35.0006942Z",
    "thumbprint": "C2DDD8044C956ACD0269A75A64B7862DB9DDAC3E",
    "type": "AsymmetricX509Cert",
    "usage": "Verify"
}
```

### Option 2: Create a custom signing certificate

You can use the following PowerShell and C# scripts to get a self-signed certificate for testing. Use your company's best security practices to create a signing certificate for production.

# [PowerShell script](#tab/powershell-script)
The following script creates a self-signed certificate with the name you give in `fqdn` when prompted, for example, `CN=AWSContoso`. It protects the certificate with the password you supply in `pwd` and exports the PFX and CER certificates to the location you specify in `location`.

```powershell
Param(
    [Parameter(Mandatory=$true)]
    [string]$fqdn,
    [Parameter(Mandatory=$true)]
    [string]$pwd,
    [Parameter(Mandatory=$true)]
    [string]$location
) 

if (!$PSBoundParameters.ContainsKey('location'))
{
    $location = "."
} 

$cert = New-SelfSignedCertificate -certstorelocation cert:\currentuser\my -DnsName $fqdn
$pwdSecure = ConvertTo-SecureString -String $pwd -Force -AsPlainText
$path = 'cert:\currentuser\my\' + $cert.Thumbprint
$cerFile = $location + "\\" + $fqdn + ".cer"
$pfxFile = $location + "\\" + $fqdn + ".pfx" 

Export-PfxCertificate -cert $path -FilePath $pfxFile -Password $pwdSecure
Export-Certificate -cert $path -FilePath $cerFile
```

# [C# script](#tab/csharp-script)
The following C# console app can be used as a proof of concept to understand how the required values can be obtained. This code is for learning and reference only and shouldn't be used as-is in production.

```csharp
using System;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;


/* CONSOLE APP - PROOF OF CONCEPT CODE ONLY!!
 * This code uses a self signed certificate and should not be used 
 * in production. This code is for reference and learning ONLY.
 */
namespace Self_signed_cert
{
    class Program
    {
        static void Main(string[] args)
        {
            // Generate a guid to use as a password and then create the cert.
            string password = Guid.NewGuid().ToString();
            var selfsignedCert = buildSelfSignedServerCertificate(password);

            // Print values so we can copy paste into the JSON fields.
            // Print out the private key in base64 format.
            Console.WriteLine("Private Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Pfx, password)), Environment.NewLine);

            // Print out the start date in ISO 8601 format.
            DateTime startDate = DateTime.Parse(selfsignedCert.GetEffectiveDateString()).ToUniversalTime();
            Console.WriteLine("For All startDateTime: " + startDate.ToString("o"));

            // Print out the end date in ISO 8601 format.
            DateTime endDate = DateTime.Parse(selfsignedCert.GetExpirationDateString()).ToUniversalTime();
            Console.WriteLine("For All endDateTime: " + endDate.ToString("o"));

            // Print the GUID used for keyId
            string signAndPasswordGuid = Guid.NewGuid().ToString();
            string verifyGuid = Guid.NewGuid().ToString();
            Console.WriteLine("GUID to use for keyId for keyCredentials->Usage == Sign and passwordCredentials: " + signAndPasswordGuid);
            Console.WriteLine("GUID to use for keyId for keyCredentials->Usage == Verify: " + verifyGuid);

            // Print out the password.
            Console.WriteLine("Password is: {0}", password);

            // Print out a displayName to use as an example.
            Console.WriteLine("displayName to use: CN=Example");
            Console.WriteLine();

            // Print out the public key.
            Console.WriteLine("Public Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Cert)), Environment.NewLine);
            Console.WriteLine();

            // Generate the customKeyIdentifier using hash of thumbprint.
            Console.WriteLine("You can generate the customKeyIdentifier by getting the SHA256 hash of the certs thumprint.\nThe certs thumbprint is: {0}{1}", selfsignedCert.Thumbprint, Environment.NewLine);
            Console.WriteLine("The hash of the thumbprint that we will use for customeKeyIdentifier is:");
            string keyIdentifier = GetSha256FromThumbprint(selfsignedCert.Thumbprint);
            Console.WriteLine(keyIdentifier);
        }

        // Generate a self-signed certificate.
        private static X509Certificate2 buildSelfSignedServerCertificate(string password)
        {
            const string CertificateName = @"Microsoft Azure Federated SSO Certificate TEST";
            DateTime certificateStartDate = DateTime.UtcNow;
            DateTime certificateEndDate = certificateStartDate.AddYears(2).ToUniversalTime();

            X500DistinguishedName distinguishedName = new X500DistinguishedName($"CN={CertificateName}");

            using (RSA rsa = RSA.Create(2048))
            {
                var request = new CertificateRequest(distinguishedName, rsa, HashAlgorithmName.SHA256, RSASignaturePadding.Pkcs1);

                request.CertificateExtensions.Add(
                    new X509KeyUsageExtension(X509KeyUsageFlags.DataEncipherment | X509KeyUsageFlags.KeyEncipherment | X509KeyUsageFlags.DigitalSignature, false));

                var certificate = request.CreateSelfSigned(new DateTimeOffset(certificateStartDate), new DateTimeOffset(certificateEndDate));
                certificate.FriendlyName = CertificateName;

                return new X509Certificate2(certificate.Export(X509ContentType.Pfx, password), password, X509KeyStorageFlags.Exportable);
            }
        }

        // Generate hash from thumbprint.
        public static string GetSha256FromThumbprint(string thumbprint)
        {
            var message = Encoding.ASCII.GetBytes(thumbprint);
            SHA256Managed hashString = new SHA256Managed();
            return Convert.ToBase64String(hashString.ComputeHash(message));
        }
    }
}
```
---

#### Extract certificate details

From the previous step, you have the CER and PFX certificates. Extract the values for the private key, password, public key, and the certificate thumbprint to add to the service principal.

##### Extract the certificate thumbprint

###### Request

The following PowerShell script allows you to extract the thumbprint from the CER file. Replace the file path with the location of your certificate.

```powershell-interactive
## Replace the file path with the source of your certificate

Get-PfxCertificate -Filepath "C:\Users\admin\Desktop\CN=AWSContoso.cer" | Out-File -FilePath "C:\Users\admin\Desktop\CN=AWSContoso.cer.thumbprint.txt"
```

###### Response

The CN=AWSContoso.cer.thumbprint.txt file has an entry similar to the following output.

```powershell
Thumbprint                                Subject              EnhancedKeyUsageList
----------                                -------              --------------------
5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A  CN=AWSContoso        {Client Authentication, Server Authentication}
```

##### Extract the certificate key
The following PowerShell script allows you to extract the public key from the CER file. Replace the file path with the location of your certificate.


###### Request
```powershell-interactive
[convert]::ToBase64String((Get-Content C:\Users\admin\Desktop\CN=AWSContoso.cer -AsByteStream -Raw))  | Out-File -FilePath "C:\Users\admin\Desktop\CN=AWSContoso.cer.key.txt"
```

###### Response

The CN=AWSContoso.cer.key.txt file has an base64 encoded value similar to the following truncated output.

```bash
MIIDHjCCAgagAwIBAgIQYDbahiL7NY...6qCMVJKHAQGzGwg==
```

#### Add the custom signing key

Add the following details to the **keyCredentials** and **passwordCredentials** for the service principal. Where the two objects have the same properties, you must assign the same values for those properties.

- The **customKeyIdentifier** is the certificate thumbprint hash.
- The **startDateTime** is the date when or after the certificate was created.
- The **endDateTime** can be a maximum of three years from the **startDateTime**. If unspecified, the system automatically assigns a date one year after the startDateTime.
- The **type** and **usage** must be:
   - `AsymmetricX509Cert` and `Verify` respectively in the same object.
   - `X509CertAndPassword` and `Sign` respectively in the same object.
- Assign the certificate subject name to the **displayName** property.
- The **key** is the Base64 encoded value that you generated in the previous step.
- The **keyId** is a GUID that you can define.

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
      "blockType": "request",
      "name": "tutorial_configure_saml_sso_add_credentials"
    }-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/ef04fead-8549-4e59-b5f7-d1d8c697ec64
Content-type: application/json

{
    "keyCredentials": [
        {
            "customKeyIdentifier": "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A",
            "endDateTime": "2027-01-22T00:00:00Z",
            "keyId": "4c266507-3e74-4b91-aeba-18a25b450f6e",
            "startDateTime": "2024-02-21T17:09:35Z",
            "type": "X509CertAndPassword",
            "usage": "Sign",
            "key": "MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=",
            "displayName": "CN=AWSContoso"
        },
        {
            "customKeyIdentifier": "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A",
            "endDateTime": "2027-01-22T00:00:00Z",
            "keyId": "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42",
            "startDateTime": "2024-02-21T17:09:35Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=",
            "displayName": "CN=AWSContoso"
        }
    ],
    "passwordCredentials": [
        {
            "customKeyIdentifier": "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A",
            "keyId": "4c266507-3e74-4b91-aeba-18a25b450f6e",
            "endDateTime": "2022-01-27T19:40:33Z",
            "startDateTime": "2027-01-22T00:00:00Z",
            "secretText": "61891f4ee44d"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-add-credentials-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-add-credentials-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-add-credentials-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-add-credentials-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-add-credentials-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-add-credentials-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-add-credentials-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-add-credentials-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Activate the custom signing key

You need to set the **preferredTokenSigningKeyThumbprint** property of the service principal to the thumbprint of the certificate that you want Microsoft Entra ID to use to sign the SAML response. The request returns a `204 No Content` response code.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_certificatethumbprint"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46
Content-type: application/json

{
    "preferredTokenSigningKeyThumbprint": "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-update-certificatethumbprint-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-update-certificatethumbprint-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-update-certificatethumbprint-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-update-certificatethumbprint-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-update-certificatethumbprint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-update-certificatethumbprint-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-update-certificatethumbprint-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-update-certificatethumbprint-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 7: Assign users to the application

### Assign a user to the application

Assign the user that you created to the service principal and grant them the `Admin,WAAD` app role. In the request body, provide the following values:

- **principalId** - The ID of the user account that you created.
- **appRoleId** - The ID of the `Admin,WAAD` app role that you added.
- **resourceId** - The ID of the service principal.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_add_approleassignment"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46/appRoleAssignments
Content-type: application/json

{
    "principalId": "59bb3898-0621-4414-ac61-74f9d7201355",
    "principalType": "User",
    "appRoleId": "3a84e31e-bffa-470f-b9e6-754a61e4dc63",
    "resourceId": "d3616293-fff8-4415-9f01-33b05dad1b46"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-add-approleassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-add-approleassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-add-approleassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-add-approleassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-add-approleassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-add-approleassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-add-approleassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-add-approleassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('d3616293-fff8-4415-9f01-33b05dad1b46')/appRoleAssignments/$entity",
    "id": "mDi7WSEGFESsYXT51yATVdouI-92Rw1OgPSpSxEvaLg",
    "deletedDateTime": null,
    "appRoleId": "3a84e31e-bffa-470f-b9e6-754a61e4dc63",
    "createdDateTime": "2024-02-21T18:07:54.7959075Z",
    "principalDisplayName": "Adele Vance",
    "principalId": "59bb3898-0621-4414-ac61-74f9d7201355",
    "principalType": "User",
    "resourceDisplayName": "AWS Contoso",
    "resourceId": "d3616293-fff8-4415-9f01-33b05dad1b46"
}
```

## Step 8: Get Microsoft Entra ID SAML metadata for AWS Contoso app

Use the following URL to get the Microsoft Entra ID SAML metadata for AWS Contoso app. Replace `{tenant-id}` with the tenant ID and `{appId}` with the appId of the AWS Contoso app. The metadata contains information such as the signing certificate, Microsoft Entra entityID, and Microsoft Entra SingleSignOnService, among others.

`https://login.microsoftonline.com/{tenant-id}/federationmetadata/2007-06/federationmetadata.xml?appid={appId}`

The following shows an example of what you might see for your application. Save the data in XML format.

```xml
<EntityDescriptor xmlns="urn:oasis:names:tc:SAML:2.0:metadata" ID="_26313693-22d4-4361-8e48-ea19bb8616e1" entityID="https://sts.windows.net/38d49456-54d4-455d-a8d6-c383c71e0a6d/">
<RoleDescriptor xmlns:fed="http://docs.oasis-open.org/wsfed/federation/200706" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="fed:SecurityTokenServiceType" protocolSupportEnumeration="http://docs.oasis-open.org/wsfed/federation/200706">
<fed:ClaimTypesOffered>
...
<IDPSSODescriptor protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol">
<SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/38d49456-54d4-455d-a8d6-c383c71e0a6d/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/38d49456-54d4-455d-a8d6-c383c71e0a6d/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://login.microsoftonline.com/38d49456-54d4-455d-a8d6-c383c71e0a6d/saml2"/>
</IDPSSODescriptor>
</EntityDescriptor>
```


## Step 9: Complete and test the integration 

Now that you've completed the configuration steps for the application in Microsoft Entra ID and have the SAML metadata, sign in to your AWS IAM Identity Center company site as an administrator and:
1. Complete the steps to [Configure AWS IAM Identity Center SSO](/entra/identity/saas-apps/aws-single-sign-on-tutorial#configure-aws-iam-identity-center-sso).
1. Create a test user whose user name and email address match the user account that you created in Microsoft Entra ID.
1. [Test the SSO integration](/entra/identity/saas-apps/aws-single-sign-on-tutorial#test-sso).

## Step 10: Clean up resources

In this step, remove the resources that you created and no longer need.

### Delete the application

When you delete the application, the service principal in your tenant is also deleted. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_delete_application"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/applications/b7308000-8bb3-467b-bfc7-8dbbfd759ad9
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-delete-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-delete-application-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-delete-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-delete-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-delete-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-delete-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-delete-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-delete-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Delete the test user account

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
 "name": "tutorial_configure_saml_sso_delete_user"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/users/59bb3898-0621-4414-ac61-74f9d7201355
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-delete-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-delete-user-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-delete-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-delete-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-delete-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-delete-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-delete-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-delete-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Delete the claims mapping policy

The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_delete_claimsmappingpolicy"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/a4b35718-fd5e-4ca8-8248-a3c9934b1b78
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-configure-saml-sso-delete-claimsmappingpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- Review the [steps to integrate Microsoft Entra SSO with AWS IAM Identity Center using the Microsoft Entra admin center](/entra/identity/saas-apps/aws-single-sign-on-tutorial).
