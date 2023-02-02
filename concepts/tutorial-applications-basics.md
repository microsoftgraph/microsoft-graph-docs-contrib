---
title: "Manage an Azure AD application using Microsoft Graph"
description: "Learn how to use the applications and service principals APIs in Microsoft Graph to manage your applications."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "applications"
ms.date: 12/08/2022
---

# Manage an Azure AD application using Microsoft Graph

Your app must be registered in Azure AD before the Microsoft identity platform can authorize it to access data stored in Azure Active Directory (Azure AD) or Microsoft 365 tenants. This condition applies to apps that you develop yourself, that are owned by your organization, or that you access through an active subscription.

Many settings for apps are recorded as objects that can be accessed, updated, or deleted using Microsoft Graph. In this article, you'll learn how to use Microsoft Graph to manage app and service principal objects including the properties, permissions, and role assignments.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant.
+ Sign in to [Graph Explorer](https://aka.ms/ge) as a user in an _Application Administrator_ role or a user allowed to create and manage applications in the tenant.

## Register an application with Azure AD

### Request

Least privilege delegated permission: `Application.ReadWrite.All`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-create-app"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/applications
Content-type: application/json

{
  "displayName": "My application"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-create-app-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-create-app-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-create-app-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-create-app-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-create-app-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-create-app-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following code is an example of the default response that includes all the properties returned by default. The application is assigned an ID that's globally unique in the Azure AD ecosystem.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications/$entity",
    "id": "0d0021e2-eaab-4b9f-a5ad-38c55337d63e",
    "deletedDateTime": null,
    "appId": "5f0f8757-988d-474c-9f85-74a6bc70dfd0",
    "applicationTemplateId": null,
    "disabledByMicrosoftStatus": null,
    "createdDateTime": "2022-02-08T08:58:36.7669085Z",
    "displayName": "My application",
    "description": null,
    "groupMembershipClaims": null,
    "identifierUris": [],
    "isDeviceOnlyAuthSupported": null,
    "isFallbackPublicClient": null,
    "notes": null,
    "publisherDomain": "M365x010717.onmicrosoft.com",
    "serviceManagementReference": null,
    "signInAudience": "AzureADandPersonalMicrosoftAccount",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "defaultRedirectUri": null,
    "certification": null,
    "optionalClaims": null,
    "addIns": [],
    "api": {
        "acceptMappedClaims": null,
        "knownClientApplications": [],
        "requestedAccessTokenVersion": 2,
        "oauth2PermissionScopes": [],
        "preAuthorizedApplications": []
    },
    "appRoles": [],
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
        "homePageUrl": null,
        "logoutUrl": null,
        "redirectUris": [],
        "implicitGrantSettings": {
            "enableAccessTokenIssuance": false,
            "enableIdTokenIssuance": false
        }
    },
    "spa": {
        "redirectUris": []
    }
}
```

The **signInAudience** property is assigned a default value of `AzureADandPersonalMicrosoftAccount`. This configuration allows any user who is signed in with any account type, including Azure AD accounts, personal Microsoft accounts, and social media credentials, can use your app. You can change the **signInAudience** to a different scope.

If you created the application as a user with administrator privileges, you were automatically assigned ownership to the application. You can confirm ownership by retrieving the owners navigation property through `GET https://graph.microsoft.com/v1.0/applications/0d0021e2-eaab-4b9f-a5ad-38c55337d63e/owners`. You can also assign another user or app ownership of the application.

## Configure other basic properties for your app

Least privilege delegated permission: `Application.ReadWrite.All`

You'll configure the following basic properties for the app.

+ Add tags for categorization in the organization. Also, use the `HideApp` tag to hide the app from My Apps and the Microsoft 365 Launcher.
+ Add basic information including the logo, terms of service, and privacy statement.
+ Store contact information about the application

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-update-app"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/0d0021e2-eaab-4b9f-a5ad-38c55337d63e/
Content-type: application/json

{
    "tags": [
        "HR",
        "Payroll",
        "HideApp"
    ],
    "info": {
        "logoUrl": "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png",
        "marketingUrl": "https://www.contoso.com/app/marketing",
        "privacyStatementUrl": "https://www.contoso.com/app/privacy",
        "supportUrl": "https://www.contoso.com/app/support",
        "termsOfServiceUrl": "https://www.contoso.com/app/termsofservice"
    },
    "web": {
        "homePageUrl": "https://www.contoso.com/",
        "logoutUrl": "https://www.contoso.com/frontchannel_logout",
        "redirectUris": [
            "https://localhost"
        ]
    },
    "serviceManagementReference": "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-update-app-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-update-app-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-update-app-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-update-app-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-update-app-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-update-app-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Limit app sign-in to only assigned identities

Least privilege delegated permission: `Application.ReadWrite.All`

<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-grant-approleassignmentrequired"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/89473e09-0737-41a1-a0c3-1418d6908bcd
{
    "appRoleAssignmentRequired": true
}
```


## Assign permissions to an app

While you can assign permissions to an app through the Azure portal, you also assign permissions through Microsoft Graph by updating the **requiredResourceAccess** property of the app object. You must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions that haven't yet been consented to.

Least privilege delegated permission: `Application.ReadWrite.All`

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-assign-permissions"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/581088ba-83c5-4975-b8af-11d2d7a76e98
Content-Type: application/json

{
    "requiredResourceAccess": [
        {
            "resourceAppId": "00000002-0000-0000-c000-000000000000",
            "resourceAccess": [
                {
                    "id": "311a71cc-e848-46a1-bdf8-97ff7156d8e6",
                    "type": "Scope"
                },
                {
                    "id": "3afa6a7d-9b1a-42eb-948e-1650a849e176",
                    "type": "Role"
                }
            ]
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-assign-permissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-assign-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-assign-permissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-assign-permissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-assign-permissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


After assigning these permissions, request for admin consent.

## Grant permissions to an app

When you assign permissions to the app, you must also grant admin consent through the Azure portal. However, Microsoft Graph also allows you to grant permissions to the app without requiring interactive consent.

When you grant an application permission to an app, you create an **app role assignment**. When you grant a delegated permission to an app, you create a **delegated permission grant**.

### Create an app role assignment

The following request grants the client service principal identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`, an app role of ID `df021288-bdef-4463-88db-98f22de89214`, that's exposed by a resource service principal of ID `7ea9e944-71ce-443d-811c-71e8047b557a`.

Least privilege delegated permission: `Application.Read.All` and `AppRoleAssignment.ReadWrite.All`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-grant-approles"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo
Content-Type: application/json

{
    "principalId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-grant-approles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-grant-approles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-grant-approles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-grant-approles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-grant-approles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Create a delegated permission grant on behalf of one principal

The following request grants a service principal identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`, two scopes that are exposed by a resource service principal of ID `7ea9e944-71ce-443d-811c-71e8047b557a`, on behalf of a principal identified by ID `3fbd929d-8c56-4462-851e-0eb9a7b3a2a5` in the tenant.

Least privilege delegated permission: `Application.Read.All` and `DelegatedPermissionGrant.ReadWrite.All`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-grant-scopes-principal"
}-->
```http
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "consentType": "Principal",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "principalId": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
    "scope": "User.Read.All Group.Read.All"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-grant-scopes-principal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-grant-scopes-principal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-grant-scopes-principal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-grant-scopes-principal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-grant-scopes-principal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-grant-scopes-principal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Create a delegated permission grant on behalf of all principals

The following request grants a service principal identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`, two scopes that are exposed by a resource service principal of ID `7ea9e944-71ce-443d-811c-71e8047b557a`, on behalf of all principals in the tenant.

Least privilege delegated permission: `Application.Read.All` and `DelegatedPermissionGrant.ReadWrite.All`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-grant-scopes-allprincipals"
}-->
```http
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "consentType": "AllPrincipal",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "scope": "User.Read.All Group.Read.All"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-grant-scopes-allprincipals-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-grant-scopes-allprincipals-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-grant-scopes-allprincipals-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-grant-scopes-allprincipals-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-grant-scopes-allprincipals-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-grant-scopes-allprincipals-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Assign users and groups to an application

You might want users and groups to first be assigned the application before they're able to access it. To implement this access control list, create an app role assignment for the users or groups to the app. Only users and security groups, including security groups with dynamic memberships, are supported. You can use the default app role of `00000000-0000-0000-0000-000000000000`.

Least privilege delegated permission: `Application.Read.All` and `AppRoleAssignment.ReadWrite.All`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-grant-approleassignmentrequired-create-assignment"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/89473e09-0737-41a1-a0c3-1418d6908bcd/appRoleAssignedTo
Content-Type: application/json

{
    "principalId": "b8afc02cb-4d62-4dba-b536-9f6d73e9e26",
    "resourceId": "89473e09-0737-41a1-a0c3-1418d6908bcd",
    "appRoleId": "00000000-0000-0000-0000-000000000000"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-grant-approleassignmentrequired-create-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-grant-approleassignmentrequired-create-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-grant-approleassignmentrequired-create-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-grant-approleassignmentrequired-create-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-grant-approleassignmentrequired-create-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Create app roles

### Create app roles on an application object

```http
PATCH https://graph.microsoft.com/v1.0/applications/bbd46130-e957-4c38-a116-d4d02afd1057
Content-Type: application/json

{
    "appRoles": [
        {
            "allowedMemberTypes": [
                "User",
                "Application"
            ],
            "description": "Survey.Read",
            "displayName": "Survey.Read",
            "id": "7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0",
            "isEnabled": false,
            "origin": "Application",
            "value": "Survey.Read"
        }
    ]
}
```


### Create app roles on a service principal object

When updating the appRoles in a service principal, you can only add to or update the existing collection. You cannot use this method to delete an appRole whose origin is the backing application. Therefore, the service principal can expose more, but not less, appRoles than the backing application.

In the following request, the `Survey.Read` appRole originates from the application object.

```http
PATCH https://graph.microsoft.com/beta/servicePrincipals/2a8f9e7a-af01-413a-9592-c32ec0e5c1a7
Content-Type: application/json

{
    "appRoles": [
        {
            "allowedMemberTypes": [
                "User"
            ],
            "description": "Survey.ReadWrite.All",
            "displayName": "Survey.ReadWrite.All",
            "id": "3ce57053-0ebf-42d8-bf7c-74161a450e4b",
            "isEnabled": true,
            "value": "Survey.ReadWrite.All"
        },
        {
            "allowedMemberTypes": [
                "User",
                "Application"
            ],
            "description": "Survey.Read",
            "displayName": "Survey.Read",
            "id": "7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0",
            "isEnabled": false,
            "origin": "Application",
            "value": "Survey.Read"
        }
    ]
}
```

## Manage application ownership

As a best practice, we recommend auditing the apps in your tenant to ensure that there aren't any ownerless apps and service principals, and that all apps and service principals have least two owners.

### Identify ownerless apps

Least privilege delegated permission: `Application.ReadWrite.All`

This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

This request also returns the count of the apps that match the filter condition.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-ownerless-apps"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications?$filter=owners/$count eq 0&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-ownerless-apps-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-ownerless-apps-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-ownerless-apps-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-ownerless-apps-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-ownerless-apps-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-ownerless-apps-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Identify ownerless service principals or without at least two owners

Least privilege delegated permission: `Application.ReadWrite.All`

This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

This request also returns the count of the apps that match the filter condition.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-ownerless-serviceprincipals"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=owners/$count eq 0 or owners/$count eq 1&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-ownerless-serviceprincipals-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-ownerless-serviceprincipals-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-ownerless-serviceprincipals-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-ownerless-serviceprincipals-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-ownerless-serviceprincipals-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-ownerless-serviceprincipals-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Assign an owner to an app

Least privilege delegated permission: `Application.ReadWrite.All`

In the following request, `8afc02cb-4d62-4dba-b536-9f6d73e9be26` is the object ID for a user or service principal.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-assign-app-owner"
}-->
```http
POST https://graph.microsoft.com/v1.0/applications/7b45cf6d-9083-4eb2-92c4-a7e090f1fc40/owners/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/8afc02cb-4d62-4dba-b536-9f6d73e9be26"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tutorial-application-basics-assign-app-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tutorial-application-basics-assign-app-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tutorial-application-basics-assign-app-owner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tutorial-application-basics-assign-app-owner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tutorial-application-basics-assign-app-owner-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tutorial-application-basics-assign-app-owner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


## See also

+ [Properties of an enterprise application (service principal)](/azure/active-directory/manage-apps/application-properties)
