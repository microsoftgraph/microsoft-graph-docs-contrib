---
title: "Manage a Microsoft Entra application using Microsoft Graph"
description: "Learn how to use the applications and service principals APIs in Microsoft Graph to manage your applications."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: sureshja
ms.localizationpriority: medium
ms.topic: how-to
ms.subservice: entra-applications
ms.date: 07/16/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to learn how to programmatically create and manage applications and service principals in my tenant.
---

# Manage a Microsoft Entra application using Microsoft Graph

Your app must be registered in Microsoft Entra ID before the Microsoft identity platform can authorize it to access data stored in the Microsoft cloud. This condition applies to apps that you develop yourself, that your tenant owns, or that you access through an active subscription.

Many settings for apps are recorded as objects that can be accessed, updated, or deleted using Microsoft Graph. In this article, you learn how to use Microsoft Graph to manage details of app and service principal objects including the properties, permissions, and role assignments.

## Prerequisites

To test the API operations, you need the following resources and privileges:

+ A working Microsoft Entra tenant.
+ Sign in to [Graph Explorer](https://aka.ms/ge) as a user with privileges allowed to create and manage applications in the tenant.
+ Grant yourself the least privilege delegated permission indicated for the operation.

## Register an application with Microsoft Entra ID

The following request creates an app by specifying only the required **displayName** property. Other properties are assigned the default values.

Least privileged delegated permission: `Application.ReadWrite.All`.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-create-app-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-create-app-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-create-app-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-create-app-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-create-app-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-create-app-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-create-app-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-create-app-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response with the application object in the response body. The application is assigned an **id** that's unique for apps in the tenant, and an **appId** that's globally unique in the Microsoft Entra ID ecosystem.

## Create a service principal for an application

Least privileged delegated permission: `Application.ReadWrite.All`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-create-sp"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-type: application/json

{
  "appId": "fc876dd1-6bcb-4304-b9b6-18ddf1526b62"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-create-sp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-create-sp-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-create-sp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-create-sp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-create-sp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-create-sp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-create-sp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-create-sp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response with the service principal object in the response body.

## Addressing an application or a service principal object

You can address an application or a service principal by its ID or by its **appId**, where ID is referred to as *Object ID* and **appId** is referred to as *Application (client) ID* on the Microsoft Entra admin center. These syntaxes are supported for all HTTP CRUD operations on applications and service principals.

To address an application or a service principal by its ID.

```http
https://graph.microsoft.com/v1.0/applications/{applicationObjectId}
https://graph.microsoft.com/v1.0/servicePrincipals/{servicePrincipalObjectId}
```

To address an application or a service principal by its **appId**.
```http
https://graph.microsoft.com/v1.0/applications(appId='appId')
https://graph.microsoft.com/v1.0/servicePrincipals(appId='appId')
```

In addition, you can address an application object unique its **uniqueName**. You can use this property to create an application with the unique name if it doesn't exist, or update it if it exists; an operation referred to as "Upsert".

Create an application with the specified uniqueName if it doesn't exist, otherwise, update it.
```http
PATCH https://graph.microsoft.com/v1.0/applications(uniqueName='{uniqueName}')
Content-Type: application/json
Prefer: create-if-missing

{
  "displayName": "Display name"
}
```

## Configure other basic properties for your app

Least privileged delegated permission: `Application.ReadWrite.All`.

You configure the following basic properties for the app.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-update-app-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-update-app-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-update-app-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-update-app-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-update-app-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-update-app-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-update-app-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-update-app-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Limit app sign-in to only assigned identities

The following operation limits the identities that can sign in to an app to only those that are assigned all roles on the app.

Least privileged delegated permission: `Application.ReadWrite.All`.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-grant-approleassignmentrequired-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-grant-approleassignmentrequired-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-grant-approleassignmentrequired-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-grant-approleassignmentrequired-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-grant-approleassignmentrequired-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-grant-approleassignmentrequired-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-grant-approleassignmentrequired-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-grant-approleassignmentrequired-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Assign permissions to an app

While you can assign permissions to an app through the Microsoft Entra admin center, you also assign permissions through Microsoft Graph by updating the **requiredResourceAccess** property of the app object. You must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions that haven't yet been consented to.

**Assigning** permissions doesn't automatically grant them to the app. You must still grant admin consent using the Microsoft Entra admin center. To grant permissions without interactive consent, see [Grant or revoke API permissions programmatically](permissions-grant-via-msgraph.md).

Least privileged delegated permission: `Application.ReadWrite.All`.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-assign-permissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-assign-permissions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-assign-permissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-assign-permissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-assign-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-assign-permissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-assign-permissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-assign-permissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Create app roles

### Create app roles on an application object

To keep any existing app roles, include them in the request. Otherwise, they're replaced with the new object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-create-serviceprincipal-approles"
}-->
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-create-serviceprincipal-approles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-create-serviceprincipal-approles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-create-serviceprincipal-approles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-create-serviceprincipal-approles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-create-serviceprincipal-approles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-create-serviceprincipal-approles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-create-serviceprincipal-approles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-create-serviceprincipal-approles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Manage owners

### Identify ownerless service principals and service principals with one owner

Least privileged delegated permission: `Application.ReadWrite.All`.

This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-ownerless-serviceprincipals-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-ownerless-serviceprincipals-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-ownerless-serviceprincipals-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-ownerless-serviceprincipals-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-ownerless-serviceprincipals-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-ownerless-serviceprincipals-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-ownerless-serviceprincipals-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-ownerless-serviceprincipals-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Assign an owner to an app

Least privileged delegated permission: `Application.ReadWrite.All`.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-assign-app-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-assign-app-owner-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-assign-app-owner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-assign-app-owner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-assign-app-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-assign-app-owner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-assign-app-owner-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-assign-app-owner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Assign an owner to a service principal

Least privileged delegated permission: `Application.ReadWrite.All`.

The following request references the service principal using its **appId**. You can alternatively reference it using the object ID in the pattern `../servicePrincipals/{bject ID}/owners/$ref`. `8afc02cb-4d62-4dba-b536-9f6d73e9be26` is the object ID for a user or service principal.


<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-assign-serviceprincipal-owner"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals(appId='46e6adf4-a9cf-4b60-9390-0ba6fb00bf6b')/owners/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/8afc02cb-4d62-4dba-b536-9f6d73e9be26"
}
```

## Lock sensitive properties for service principals

The *app instance lock* feature allows you to protect sensitive properties of your multitenant apps from unauthorized tampering. The following properties of the service principal object can be locked:

- **keyCredentials** where the usage type is `Sign` or `Verify`.
- **passwordCredentials** where the usage type is `Sign` or `Verify`.
- **tokenEncryptionKeyId** property.

You manage the app instance lock feature through the **servicePrincipalLockConfiguration** property of the [application](/graph/api/resources/application) object of the multitenant app.

#### To lock all sensitive properties of a service principal

When **isEnabled** and **allProperties** is set to `true`, even if other properties of the servicePrincipalLockConfiguration object are `null`, then all sensitive properties of the service principal are locked.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-serviceprincipallockconfig-all"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/a0b7f39e-3139-48aa-9397-f46fb63102f7

{
    "servicePrincipalLockConfiguration": {
        "isEnabled": true,
        "allProperties": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-application-basics-serviceprincipallockconfig-all-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-application-basics-serviceprincipallockconfig-all-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-application-basics-serviceprincipallockconfig-all-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-application-basics-serviceprincipallockconfig-all-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-application-basics-serviceprincipallockconfig-all-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-application-basics-serviceprincipallockconfig-all-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-application-basics-serviceprincipallockconfig-all-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-application-basics-serviceprincipallockconfig-all-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### To lock specific sensitive properties of a service principal

The following example locks the **keyCredentials** and **passwordCredentials** properties of the service principal and enables the app instance lock feature.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-serviceprincipallockconfig-specific"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/a0b7f39e-3139-48aa-9397-f46fb63102f7

{
    "servicePrincipalLockConfiguration": {
        "isEnabled": true,
        "credentialsWithUsageSign": true,
        "credentialsWithUsageVerify": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-application-basics-serviceprincipallockconfig-specific-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-application-basics-serviceprincipallockconfig-specific-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-application-basics-serviceprincipallockconfig-specific-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-application-basics-serviceprincipallockconfig-specific-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-application-basics-serviceprincipallockconfig-specific-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-application-basics-serviceprincipallockconfig-specific-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-application-basics-serviceprincipallockconfig-specific-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-application-basics-serviceprincipallockconfig-specific-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Configure trusted certificate authorities for apps

You can restrict certificate credential usage for apps in your tenant to only the certificates issued by trusted certificate authorities. This policy is enforced when you add a certificate to an app and doesn't affect existing certificates unless they are rotated. When an app tries to rotate its certificate credentials, it goes through the policy evaluation to ensure the credentials being added comply with the trusted certificate authority restriction.

### Step 1: Create a certificate chain of trust

Least privileged delegated permission: `AppCertTrustConfiguration.Read.All`
Least privileged Microsoft Entra role: `Application Administrator`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-certbasedappconfig"
}-->
```http
POST https://graph.microsoft.com/beta/certificateAuthorities/certificateBasedApplicationConfigurations

{
    "displayName": "Trusted Certificate Chain of Trust for Contoso",
    "description": "The Trusted Certificate Chain of Trust containing a certificate chain used by app policy, to only allow application certificates from selected issuer.",
    "trustedCertificateAuthorities": [
        {
            "isRootAuthority": true,
            "certificate": "MIIFVjCCAz6gAwIBAgIQJdrL...UyNDIyNTcwM1owPDE …="
        },
        {
            "isRootAuthority": false,
            "certificate": QAAAAAAWjABAQsFADA8M...UyNDIyNTcwM1o …="
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-application-basics-certbasedappconfig-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-application-basics-certbasedappconfig-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `200 OK` response object. The response includes the ID of the certificate chain of trust object. Assume that the ID is `eec5ba11-2fc0-4113-83a2-ed986ed13743`. 

### Step 2: Assign the certificate chain of trust to an application management policy

The following sample sets up a policy to ensure that only certificates issued by the intermediate certificate authority defined in the previous step can be added to apps in the tenant. The **applicationRestrictions** > **keyCredentials** object defines a **restrictionType** with the value `trustedCertificateAuthority`, which references the ID that was created. Because this policy is applied to the default tenant-level app management policy, it's enforced for all apps created in the tenant and rejects attempts to add noncompliant certificates as part of an app's certificate credentials.

This policy ensures that only certificates from the specified intermediate certificate authority can be added to apps. The **applicationRestrictions** > **keyCredentials** object sets a **restrictionType** to `trustedCertificateAuthority`, referencing the created ID. This policy applies to all apps in the tenant, rejecting any noncompliant certificates.


Least privileged delegated permission: `Policy.Read.ApplicationConfiguration`
Least privileged Microsoft Entra role: `Security Administrator`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-update-appmanagementpolicy"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/defaultAppManagementPolicy

{
  "id": "d015220e-9789-4e8e-bbcc-270fe419229d",
  "description": "Lorem ipsum",
  "displayName": "Credential management policy",
  "isEnabled": true,
  "applicationRestrictions": {
    "passwordCredentials": [
      {
        "restrictionType": "passwordLifetime",
        "maxLifetime": "P14D",
        "restrictForAppsCreatedAfterDateTime": "2020-01-01T07:00:00Z"
      }
    ],
    "keyCredentials": [
      {
        "restrictionType": "certificateLifetime",
        "restrictForAppsCreatedAfterDateTime": "2020-01-01T10:37:00Z",
        "maxLifetime": "P90D"
      },
      {
        "restrictionType": "trustedCertificateAuthority",
        "certificateBasedApplicationConfigurationIds": [
          "eec5ba11-2fc0-4113-83a2-ed986ed13743"
        ],
        "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-application-basics-update-appmanagementpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-application-basics-update-appmanagementpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-application-basics-update-appmanagementpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-application-basics-update-appmanagementpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-application-basics-update-appmanagementpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-application-basics-update-appmanagementpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-application-basics-update-appmanagementpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-application-basics-update-appmanagementpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

+ [The Microsoft Entra app manifest](/entra/identity-platform/reference-app-manifest)
+ [Properties of an enterprise application (service principal)](/azure/active-directory/manage-apps/application-properties)
+ [Add a certificate to an app using Microsoft Graph](/graph/applications-how-to-add-certificate)
