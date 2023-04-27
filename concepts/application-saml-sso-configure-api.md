---
title: "Use Microsoft Graph APIs to configure SAML-based single sign-on"
description: "Follow these steps to create and configure a SAML-based single sign-on (SSO) for your application in Azure AD using the Microsoft Graph API."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: alamaral
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.prod: applications
ms.date: 12/08/2022
---

# Configure SAML-based single sign-on for your application using the Microsoft Graph API

In this article, you'll learn how to create and configure a SAML-based single sign-on (SSO) for your application in Azure Active Directory (Azure AD) using the Microsoft Graph API. The application configuration includes basic SAML URLs, a claims mapping policy, and using a certificate to add a custom signing key. After the application is created, you assign a user to it to be an administrator. You then can use a URL to obtain Azure AD SAML metadata for additional configuration of the application. 

This article uses an AWS Azure AD application template as an example, but you can use the steps in this article for any SAML-based app in the Azure AD Gallery.

## Prerequisites

- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the global administrator role.
- Grant yourself the following delegated permissions: `Application.ReadWrite.All`, `AppRoleAssignment.ReadWrite.All`, `Policy.Read.All`, `Policy.ReadWrite.ApplicationConfiguration`, and `User.ReadWrite.All`.

## Step 1: Create the application

Azure AD has a gallery that contains thousands of pre-integrated applications that you can use as a template for your application. The application template describes the metadata for that application. Using this template, you can create an instance of the application and service principal in your tenant for management. 

To create the application from the gallery, you first get the identifier of the application template and then use that identifier to create the application.

### Retrieve the gallery application template identifier

 In this tutorial, you retrieve the identifier of the application template for `AWS IAM Identity Center (successor to AWS Single Sign-On)`. Record the value of the **id** property to use later in this tutorial.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_applicationtemplates_get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applicationTemplates?$filter=displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-applicationtemplates-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-applicationtemplates-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-applicationtemplates-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-applicationtemplates-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-applicationtemplates-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-applicationtemplates-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
            "logoUrl": "https://az495088.vo.msecnd.net/app-logo/awssinglesignon_215.png",
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

### Create the application

Using the **id** value that you recorded for the application template, create an instance of the application and service principal in your tenant. Record the value of the **id** property of the application and the value of the **id** property for the service principal to use later in this tutorial.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-applicationtemplateinstantiate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-applicationtemplateinstantiate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-applicationtemplateinstantiate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-applicationtemplateinstantiate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-applicationtemplateinstantiate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-applicationtemplateinstantiate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE]
> Allow some time for the app to be provisioned into your Azure AD tenant. It is not instant. One strategy is to do a GET query on the application or service principal object every 5-10 seconds until the query is successful.

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
    "id": "a9be408a-6c31-4141-8cea-52fcd4a61be8",
    "appId": "17cad0e7-cd2b-4e51-a75d-ba810f3e4045",
    "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
    "createdDateTime": "2021-05-10T20:12:03Z",
    "deletedDateTime": null,
    "displayName": "AWS Contoso",
    "groupMembershipClaims": null,
    "identifierUris": [],
    "isFallbackPublicClient": false,
    "signInAudience": "AzureADMyOrg",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "defaultRedirectUri": null,
    "optionalClaims": null,
    "verifiedPublisher": {
      "displayName": null,
      "verifiedPublisherId": null,
      "addedDateTime": null
    },
    "addIns": [],
    "api": {
      "acceptMappedClaims": null,
      "knownClientApplications": [],
      "requestedAccessTokenVersion": null,
      "oauth2PermissionScopes": [
        {
          "adminConsentDescription": "Allow the application to access AWS Contoso on behalf of the signed-in user.",
          "adminConsentDisplayName": "Access AWS Contoso",
          "id": "6f891cd3-c132-4822-930b-f343b4515d19",
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
    "web": {
      "homePageUrl": "https://*.signin.aws.amazon.com/platform/saml/acs/*?metadata=awssinglesignon|ISV9.1|primary|z",
      "redirectUris": []
    }
  },
  "servicePrincipal": {
    "id": "a750f6cf-2319-464a-bcc3-456926736a91",
    "deletedDateTime": null,
    "accountEnabled": true,
    "appId": "17cad0e7-cd2b-4e51-a75d-ba810f3e4045",
    "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
    "appDisplayName": "AWS Contoso",
    "alternativeNames": [],
    "appOwnerOrganizationId": "8500cad3-193d-48a6-8d00-c129b114dc10",
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
      "17cad0e7-cd2b-4e51-a75d-ba810f3e4045"
    ],
    "servicePrincipalType": "Application",
    "tags": [
      "WindowsAzureActiveDirectoryIntegratedApp"
    ],
    "tokenEncryptionKeyId": null,
    "samlSingleSignOnSettings": null,
    "verifiedPublisher": {
      "displayName": null,
      "verifiedPublisherId": null,
      "addedDateTime": null
    },
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
        "id": "6f891cd3-c132-4822-930b-f343b4515d19",
        "isEnabled": true,
        "type": "User",
        "userConsentDescription": "Allow the application to access AWS Contoso on your behalf.",
        "userConsentDisplayName": "Access AWS Contoso",
        "value": "user_impersonation"
      }
    ],
    "passwordCredentials": []
  }
}
```

## Step 2: Configure single sign-on

In this tutorial, you set `saml` as the single sign-on mode in the service principal. Use the **id** for the service principal that you recorded earlier.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_serviceprincipal"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91
Content-type: application/json

{
  "preferredSingleSignOnMode": "saml"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-update-serviceprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-update-serviceprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-update-serviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-update-serviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-update-serviceprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-update-serviceprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Set basic SAML URLs

Using the **id** for the application that you recorded earlier, set the identifier URI and redirect URI for AWS in the application object.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_application"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/a9be408a-6c31-4141-8cea-52fcd4a61be8
Content-type: application/json

{
  "web": {
    "redirectUris": [
      "https://signin.aws.amazon.com/saml"
    ] 
  },
  "identifierUris": [
    "https://signin.aws.amazon.com/saml"
  ]    
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-update-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Add app roles (Optional)

If the application requires the role information in the token, add the definition of the roles in the application object. 

> [!NOTE] 
> When adding app roles, don't modify the default app roles `msiam_access`. 

Use the **id** for the service principal that you recorded earlier.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_servicepricipal_approles"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/serviceprincipals/a750f6cf-2319-464a-bcc3-456926736a91
Content-type: application/json

{
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
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-update-servicepricipal-approles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-update-servicepricipal-approles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-update-servicepricipal-approles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-update-servicepricipal-approles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-update-servicepricipal-approles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Step 3: Configure claims mapping

### Create a claims mapping policy

In addition to the basic claims, configure the following claims for Azure AD to emit in the SAML token:

| Claim name | Source  |
|---------|---------|
| `https://aws.amazon.com/SAML/Attributes/Role` | assignedroles| 
| `https://aws.amazon.com/SAML/Attributes/RoleSessionName` | userprincipalname |
| `https://aws.amazon.com/SAML/Attributes/SessionDuration` | "900" |
| roles | assignedroles |
| `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier` | userprincipalname |

> [!NOTE]
> Some keys in the claims mapping policy are case sensitive (for example, "Version"). If you receive an error message such as "Property has an invalid value", it might be a case sensitive issue.

Create the claims mapping policy and record the value of the **id** property to use later in this tutorial.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-create-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-create-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-create-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-create-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-create-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-create-claimsmappingpolicy-powershell-snippets.md)]
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
    "id": "4bce7ba7-466d-4239-94b8-cf4f21428ca7",
    "deletedDateTime": null,
    "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\", \"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Value\":\"900\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"appRoles\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
    "displayName": "AWS Claims Policy",
    "isOrganizationDefault": false
}
```

### Assign a claims mapping policy to a service principal

Use the **id** for the service principal that you recorded earlier to assign a claims mapping policy to it. Use the value of the **id** property for the claims mapping policy in the body of the request.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_assign_serviceprincipal_claimsmappingpolicy"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91/claimsMappingPolicies/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/a4b35718-fd5e-4ca8-8248-a3c9934b1b78"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-assign-serviceprincipal-claimsmappingpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Step 4: Configure a signing certificate

You need a self-signed certificate that Azure AD can use to sign a SAML response. You can use your own certificate or you can use the following example. 

### Option 1: Create a signing certificate in Azure AD

Using the **id** of the service principal that you created, create a new certificate and add it to the service principal.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_create_addtokensigningcertificate"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91/addTokenSigningCertificate
Content-type: application/json

{
    "displayName":"CN=AWSContoso",
    "endDateTime":"2024-01-25T00:00:00Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-create-addtokensigningcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-create-addtokensigningcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-create-addtokensigningcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-create-addtokensigningcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-create-addtokensigningcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-create-addtokensigningcertificate-powershell-snippets.md)]
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
  "customKeyIdentifier": "p9PEYmuKhP2oaMzGfSdNQC/9ChA=",
  "displayName": "CN=AWSContoso",
  "endDateTime": "2024-01-25T00:00:00Z",
  "key": "MIICqjCCAZKgAwIBAgIId....4rnrk43wp75yqjRbOhAZ1ExAxVqW+o2JslhjUeltUMNQW+ynOfs9oHu1ZdnGmxrE=",
  "keyId": "70883316-50be-4016-ba80-19d9fbad873d",
  "startDateTime": "2021-05-10T20:35:37.5754318Z",
  "thumbprint": "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10",
  "type": "AsymmetricX509Cert",
  "usage": "Verify"
}
```

### Option 2: Create a custom signing certificate

You can use the following PowerShell and C# scripts to get a self-signed certificate for testing. You will then need to manipulate and pull the values you need manually using other tools. Use the best security practice from your company to create a signing certificate for production.

# [PowerShell script](#tab/powershell-script)
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
The following C# console app can be used as a proof of concept to understand how the required values can be obtained. This code is for learning and reference only and should not be used as-is in production.

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

#### Add a custom signing key

After running the previous code, extract the values for the following parameters from the PFX file. You will add this information to the service principal:

- Private key
- Password
- Public key

For more information about the properties, see [keyCredential resource type](/graph/api/resources/keycredential?view=graph-rest-1.0&preserve-view=true).

Make sure that the keyId for the keyCredential used for "Sign" matches the keyId of the passwordCredential. You can generate the `customkeyIdentifier` by getting the hash of the cert's thumbprint. See the previous C# reference code.

##### Request

> [!NOTE]
> The "key" value in the keyCredentials property is shortened for readability. The value is base 64 encoded. For the private key the property `usage` is "Sign". For the public key the property `usage` is "Verify".


# [HTTP](#tab/http)
<!-- {
	  "blockType": "request",
	  "name": "tutorial_configure_saml_sso_add_credentials"
	}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/f47a6776-bca7-4f2e-bc6c-eec59d058e3e
Content-type: application/json

{
    "keyCredentials":[
        {
            "customKeyIdentifier": "lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=",
            "endDateTime": "2021-04-22T22:10:13Z",
            "keyId": "4c266507-3e74-4b91-aeba-18a25b450f6e",
            "startDateTime": "2020-04-22T21:50:13Z",
            "type": "X509CertAndPassword",
            "usage": "Sign",
            "key":"MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==",
            "displayName": "CN=awsAPI"
        },
        {
            "customKeyIdentifier": "lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=",
            "endDateTime": "2021-04-22T22:10:13Z",
            "keyId": "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42",
            "startDateTime": "2020-04-22T21:50:13Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==",
            "displayName": "CN=awsAPI"
        }

    ],
    "passwordCredentials": [
        {
            "customKeyIdentifier": "lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=",
            "keyId": "4c266507-3e74-4b91-aeba-18a25b450f6e",
            "endDateTime": "2022-01-27T19:40:33Z",
            "startDateTime": "2020-04-20T19:40:33Z",
            "secretText": "61891f4ee44d"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-add-credentials-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-add-credentials-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-add-credentials-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-add-credentials-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-add-credentials-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

### Activate the custom signing key

You need to set the **preferredTokenSigningKeyThumbprint** property of the service principal to the thumbprint of the certificate that you want Azure AD to use to sign the SAML response. 

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_update_certificatethumbprint"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91
Content-type: application/json

{
  "preferredTokenSigningKeyThumbprint": "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-update-certificatethumbprint-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-update-certificatethumbprint-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-update-certificatethumbprint-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-update-certificatethumbprint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-update-certificatethumbprint-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-update-certificatethumbprint-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Step 5: Assign users

### Create a user account

For this tutorial, you create a user account that is added to the application. In the request body, change contoso.com to the domain name of your tenant. You can find tenant information on the Azure Active Directory overview page. Record the **id** of the user to be used later in this tutorial.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_create_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/users
Content-type: application/json

{
  "accountEnabled":true,
  "displayName":"MyTestUser1",
  "mailNickname":"MyTestUser1",
  "userPrincipalName":"MyTestUser1@contoso.com",
  "passwordProfile": {
    "forceChangePasswordNextSignIn":true,
    "password":"Contoso1234"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-create-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-create-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-create-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-create-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-create-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-create-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
  "id": "040f9599-7c0f-4f94-aa75-8394c4c6ea9b",
  "businessPhones": [],
  "displayName": "MyTestUser1",
  "userPrincipalName": "MyTestUser1@contoso.com"
}
```

### Assign a user to the application

Assign the user that you created to the service principal and assign the `Admin,WAAD` app role. 

In the request body, provide these values:

- **principalId** - The **id** of the user account that you created.
- **appRoleId** - The **id** of the `Admin,WAAD` app role that you added.
- **resourceId** - The **id** of the service principal.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_add_approleassignment"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91/appRoleAssignments
Content-type: application/json

{
  "principalId": "040f9599-7c0f-4f94-aa75-8394c4c6ea9b",
  "principalType": "User",
  "appRoleId":"3a84e31e-bffa-470f-b9e6-754a61e4dc63",
  "resourceId":"a750f6cf-2319-464a-bcc3-456926736a91"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-add-approleassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-add-approleassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-add-approleassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-add-approleassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-add-approleassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
} -->
```http
HTTP/1.1 201 
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('a750f6cf-2319-464a-bcc3-456926736a91')/appRoleAssignments/$entity",
  "id": "mZUPBA98lE-qdYOUxMbqm2qY3odGRGdFtpYJkAfUC0Q",
  "deletedDateTime": null,
  "appRoleId": "3a84e31e-bffa-470f-b9e6-754a61e4dc63",
  "createdDateTime": "2021-05-10T21:04:11.0480851Z",
  "principalDisplayName": "MyTestUser1",
  "principalId": "040f9599-7c0f-4f94-aa75-8394c4c6ea9b",
  "principalType": "User",
  "resourceDisplayName": "AWS Contoso",
  "resourceId": "a750f6cf-2319-464a-bcc3-456926736a91"
}
```

## Step 6: Get Azure AD SAML metadata

Use the following URL to get the Azure AD SAML metadata for the specific configured application. The metadata contains information such as the signing certificate, Azure AD entityID, and Azure AD SingleSignOnService, among others.

`https://login.microsoftonline.com/{tenant-id}/federationmetadata/2007-06/federationmetadata.xml?appid={app-id}`

The following shows an example of what you might see for your application:

```
<EntityDescriptor xmlns="urn:oasis:names:tc:SAML:2.0:metadata" ID="_05fbbf53-e892-43c9-9300-1f6738ace02c" entityID="https://sts.windows.net/2f82f566-5953-43f4-9251-79c6009bdf24/">
<Signature xmlns="http://www.w3.org/2000/09/xmldsig#">

...

<SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
</IDPSSODescriptor>
</EntityDescriptor>
```

## Step 7: Clean up resources

In this step, you remove the resources that you created.


### Delete the application

Delete the application that you created.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_delete_application"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/applications/a9be408a-6c31-4141-8cea-52fcd4a61be8
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-delete-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-delete-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-delete-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-delete-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-delete-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-delete-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Delete the user account

Delete the MyTestUser1 user account.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
 "name": "tutorial_configure_saml_sso_delete_user"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/users/040f9599-7c0f-4f94-aa75-8394c4c6ea9b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-delete-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-delete-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-delete-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-delete-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-delete-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-delete-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Delete the claims mapping policy

Delete the claims mapping policy.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_configure_saml_sso_delete_claimsmappingpolicy"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/a4b35718-fd5e-4ca8-8248-a3c9934b1b78
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-configure-saml-sso-delete-claimsmappingpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-configure-saml-sso-delete-claimsmappingpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-configure-saml-sso-delete-claimsmappingpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-configure-saml-sso-delete-claimsmappingpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-configure-saml-sso-delete-claimsmappingpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-configure-saml-sso-delete-claimsmappingpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## See also

- For AWS, you can [enable user provisioning](/azure/active-directory/app-provisioning/application-provisioning-configuration-api) to fetch all the roles from that AWS account. For more information, see [Configure the role claim issued in the SAML token](/azure/active-directory/develop/active-directory-enterprise-app-role-management).
- [Customize claims emitted in tokens for a specific app in a tenant](/azure/active-directory/develop/active-directory-claims-mapping).
- You can use the applicationTemplate API to instantiate [Non-Gallery apps](/azure/active-directory/manage-apps/view-applications-portal). Use applicationTemplateId `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.
- [applicationTemplate](/graph/api/resources/applicationtemplate)
- [appRoleAssignment](/graph/api/resources/approleassignment)
- [servicePrincipal](/graph/api/resources/serviceprincipal)
- [application](/graph/api/resources/application)
- [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy)
- [keyCredential](/graph/api/resources/keycredential)
- [addTokenSigningCertificate](/graph/api/serviceprincipal-addtokensigningcertificate)
