---
title: Programmatically Manage Microsoft Entra Apps Using Microsoft Graph
description: Learn how to use Microsoft Graph to streamline your app lifecycle.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: sureshja
ms.localizationpriority: medium
ms.topic: how-to
ms.subservice: entra-applications
ms.date: 07/03/2025
---

# Manage Microsoft Entra applications using Microsoft Graph

Microsoft Entra applications enable secure access to resources in the Microsoft cloud. Microsoft Graph provides a unified API endpoint that lets you programmatically create, configure, and manage these applications and their associated service principals. This article shows you how for automating common app management tasks with Microsoft Graph, including registering apps, updating properties, assigning permissions, and managing credentials.

## Prerequisites

- To test the API operations, sign in to [Graph Explorer](https://aka.ms/ge) with an account that lets you create and manage applications in your tenant.

## Register an application with Microsoft Entra ID

Create an app by specifying the required **displayName** property. The request uses default values for other properties.

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

The request returns a `201 Created` response with the application object in the response body. The application gets an **id** that's unique for apps in the tenant, and an **appId** that's globally unique in the Microsoft Entra ID ecosystem.

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

The request returns a `201 Created` response that includes the service principal object in the response body.

## Addressing an application or a service principal object

Reference an application or a service principal by its ID. This syntax supports the GET, PATCH, and DELETE HTTP methods.

```http
https://graph.microsoft.com/v1.0/applications/{applicationObjectId}
https://graph.microsoft.com/v1.0/servicePrincipals/{servicePrincipalObjectId}
```

Reference an application or a service principal by its `appId`. This syntax supports the GET, PATCH, and DELETE HTTP methods.
```http
https://graph.microsoft.com/v1.0/applications(appId='appId')
https://graph.microsoft.com/v1.0/servicePrincipals(appId='appId')
```

Address an application object by its **uniqueName** using the PATCH method. Use this property to create an application with the unique name if it doesn't exist, or update it if it exists. This operation is called *Upsert*.

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

Set up these basic properties for your app:

- Add tags for categorization (use `HideApp` to hide the app from My Apps and the Microsoft 365 Launcher)
- Add a logo, terms of service, and privacy statement
- Store contact information

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
      "logoUrl": "https://cdn.contoso.com/photo/2016/03/21/23/25/link-1271843_1280.png",
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

## Restrict sign-in to only users assigned all roles on the app.

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

Assign permissions through Microsoft Graph by updating the **requiredResourceAccess** property of the app object. This method is a programmatic alternative to using the Microsoft Entra admin center. Include both existing and new permissions to avoid removing permissions that are assigned but not granted.


*Assigning* permissions doesn't *grant* them. Grant admin consent in the Microsoft Entra admin center or [programmatically using Microsoft Graph APIs](permissions-grant-via-msgraph.md).

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

To add or update app roles, include all existing roles in your request. If you omit existing roles, they're removed.

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

### Identify ownerless service principals or those with only one owner

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

The following request references the service principal using its **appId**. You can alternatively reference it using the object ID in the pattern `../servicePrincipals/{object ID}/owners/$ref`. `dddddddd-9999-0000-1111-eeeeeeeeeeee` is the object ID for a user or service principal.


<!-- {
  "blockType": "request",
  "name": "tutorial-application-basics-assign-serviceprincipal-owner"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals(appId='00001111-aaaa-2222-bbbb-3333cccc4444')/owners/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/dddddddd-9999-0000-1111-eeeeeeeeeeee"
}
```

## Lock sensitive properties for service principals

Use the app instance lock feature to protect sensitive properties of service principals from unauthorized changes. Yo can lock the following properties:

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

You can restrict certificate credential usage for apps in your tenant to only the certificates issued by trusted certificate authorities. This policy is enforced when you add a certificate to an app and doesn't affect existing certificates unless they're rotated. When an app tries to rotate its certificate credentials, it goes through the policy evaluation to ensure the credentials being added comply with the trusted certificate authority restriction.

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

The request returns a `200 OK` response object. The response includes the ID of the certificate chain of trust object. Assume that the ID is `eec5ba11-2fc0-4113-83a2-ed986ed13743` used in Step 2.

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
