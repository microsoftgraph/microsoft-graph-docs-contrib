---
title: "Manage application authenticationBehaviors"
description: "Manage application authentication behaviors to adopt new breaking changes."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: medbhargava
ms.topic: how-to
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.subservice: entra-applications
ms.date: 08/29/2025
#customer intent: As a developer, I want to use Microsoft Graph to configure my app's behavior to adopt new breaking changes.
---

# Manage application authenticationBehaviors

The [**authenticationBehaviors**](/graph/api/resources/authenticationbehaviors) property of the [application](/graph/api/resources/application) object lets you configure breaking change behaviors related to token issuance. Applications can adopt new breaking changes by enabling a behavior or continue using pre-existing behavior by disabling it.

You can configure the following behaviors:

- [Control Cross-Origin-Opener-Policy (COOP) enforcement on browser-based authentication responses](#control-cross-origin-opener-policy-enforcement).
- [Allow or prevent the issuance of email claims with unverified domain owners](#prevent-the-issuance-of-email-claims-with-unverified-domain-owners).
- [Enable or disable extended Azure AD Graph access until August 31, 2025](#allow-extended-azure-ad-graph-access-until-august-31-2025), when Azure AD Graph is fully retired.
- Require multitenant applications to have a service principal in the resource tenant as part of authorization checks before they're granted access tokens.

> [!NOTE]
> The **authenticationBehaviors** property (including **coopEnforcement**) is available in Microsoft Graph v1.0 and beta for the global service. **coopEnforcement** isn't available in national cloud deployments.
## Read the authenticationBehaviors setting for an application

The **authenticationBehaviors** property is returned only on `$select` requests.

To read the property and other specified properties of all apps in the tenant, run the following sample request. The request returns a `200 OK` response code and a JSON representation of the application object that shows only the selected properties.

<!-- {
  "blockType": "request",
  "name": "list_applications_authenticationBehaviors"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications?$select=id,displayName,appId,authenticationBehaviors
```
---

To read only the **authenticationBehaviors** property for a single app, run the following sample request.

<!-- {
  "blockType": "request",
  "name": "get_application_authenticationBehaviors"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
```
---

You can also use the **appId** property as follows:

<!-- {
  "blockType": "request",
  "name": "get_application_authenticationBehaviors_via_appId"
}-->

```http
GET https://graph.microsoft.com/v1.0/applications(appId='37bf1fd4-78b0-4fea-ac2d-6c82829e9365')/authenticationBehaviors
```

## Control Cross-Origin-Opener-Policy enforcement

The **coopEnforcement** property controls whether Microsoft Entra authentication responses for an application include enforced Cross-Origin-Opener-Policy (COOP) headers. COOP isolates browser windows from cross-origin opener access and helps protect browser-based authentication flows. The service applies this per-app setting when per-app COOP override evaluation is available for the request.

Applications that use popup authentication should first adopt a COOP-compatible authentication flow. If your application uses MSAL.js, migrate to MSAL.js v5 or later and configure its supported redirect bridge. For more information, see [Migrate from MSAL Browser v4 to v5](/entra/msal/javascript/browser/v4-migration#cross-origin-opener-policy-coop-support) and [Set up the redirect bridge page in MSAL Browser](/entra/msal/javascript/browser/redirect-bridge). If an SDK or hosting platform owns the popup and callback, update to a compatible platform release or report the issue to that platform's owner.

The property supports the following values:

- `true`: Explicitly enforce COOP for the application.
- `false`: Explicitly suppress COOP enforcement as a temporary compatibility exception.
- `null`: Remove the explicit override and use the service default.

> [!NOTE]
> **coopEnforcement** is available only in the global service and isn't available in national cloud deployments.

> [!IMPORTANT]
> Before setting **coopEnforcement** to `true`, test the application's complete authentication flow, including popup closure and delivery of the authentication result to the host application. Setting the property to `false` is a temporary compatibility exception while the application or owning platform is remediated; it isn't a security remediation. The exception doesn't expire automatically. Reset the property to `null` or set it to `true` after remediation.

### Explicitly enable COOP enforcement

The following examples explicitly enable COOP enforcement for an application.

#### Option 1

This pattern for specifying the property in the request URL allows you to update *only* the specified property in the request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_true_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "coopEnforcement": true
}
```

---

#### Option 2

This pattern for specifying the property in the request body lets you update other peer properties in the same request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_true_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "coopEnforcement": true
    }
}
```
If successful, these requests return a `204 No Content` response.

---

### Temporarily suppress COOP enforcement

The following examples explicitly suppress COOP enforcement while the application owner remediates an incompatible authentication flow.

#### Option 1

This pattern for specifying the property in the request URL allows you to update *only* the specified property in the request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_false_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "coopEnforcement": false
}
```

---

#### Option 2

This pattern for specifying the property in the request body lets you update other peer properties in the same request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_false_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "coopEnforcement": false
    }
}
```
If successful, these requests return a `204 No Content` response. A COOP Report-Only header might still be present. After the application or owning platform is remediated, set the property to `true` for controlled validation or reset it to `null` to use the service default.

---

### Restore the service default

The following examples remove the explicit override.

#### Option 1

This pattern for specifying the property in the request URL allows you to update *only* the specified property in the request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_null_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "coopEnforcement": null
}
```
---

#### Option 2

This pattern for specifying the property in the request body lets you update other peer properties in the same request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_coopEnforcement_null_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "coopEnforcement": null
    }
}
```
If successful, these requests return a `204 No Content` response. To confirm the reset state, read the application with `$select=id,appId,authenticationBehaviors`. If the application has no other explicit authentication behavior, **authenticationBehaviors** is `null`. If another authentication behavior is configured, the complex object remains present and **coopEnforcement** is omitted.

---

> [!NOTE]
> In the current beta, if **coopEnforcement** is already absent, another reset request might return `400 Request_BadRequest`. Read the application first and treat an omitted property as already reset.
## Prevent the issuance of email claims with unverified domain owners

As described in the Microsoft security advisory [Potential Risk of Privilege Escalation in Microsoft Entra Applications](https://msrc.microsoft.com/blog/2023/06/potential-risk-of-privilege-escalation-in-azure-ad-applications/), **apps should never use the email claim for authorization purposes**. If your application uses the email claim for authorization or primary user identification purposes, it's subject to account and privilege escalation attacks. This risk of unauthorized access is especially identified in the following scenarios:

- When the **mail** attribute of the [user](/graph/api/resources/user) object contains an email address with an unverified domain owner
- For multitenant apps where a user from one tenant could escalate their privileges to access resources from another tenant through modification of their **mail** attribute

Today, the default behavior is to remove email addresses with unverified domain owners in claims, except for single-tenant apps and for multitenant apps with previous sign-in activity with unverified emails. If your app falls into either of these exceptions and you want to remove unverified email addresses, set the **removeUnverifiedEmailClaim** property of [authenticationBehaviors](/graph/api/resources/authenticationbehaviors) to `true` as shown in the following examples. The request returns a `204 No Content` response code.

### Remove email addresses with unverified domain owners from claims

#### Option 1

This pattern for specifying the property in the request URL allows you to update *only* the specified property in the request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_true_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": true
}
```

---

#### Option 2

This pattern for specifying the property in the request body lets you update other peer properties in the same request.

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_true_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": true
    }
}
```

---

### Accept email addresses with unverified domain owners in claims

#### Option 1

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_false_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": false
}
```

---

#### Option 2

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_false_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": false
    }
}
```

---

### Restore the default behavior

#### Option 1

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_null_false_option1"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/authenticationBehaviors
Content-Type: application/json

{
    "removeUnverifiedEmailClaim": null
}
```
---

#### Option 2

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_removeUnverifiedEmailClaim_null_false_option2"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/applications/03ef14b0-ca33-4840-8f4f-d6e91916010e/
Content-Type: application/json

{
    "authenticationBehaviors": {
        "removeUnverifiedEmailClaim": null
    }
}
```

---

## Allow extended Azure AD Graph access until August 31, 2025

By default, applications created after August 31, 2024 receive a `403 Unauthorized` error when making requests to Azure AD Graph APIs, unless you configure them to allow extended Azure AD Graph access. Additionally, you must configure existing apps created before August 31, 2024 and making requests to Azure AD Graph APIs to allow extended Azure AD Graph access by February 1, 2025. This extended access is available only until June 30, 2025, when Azure AD Graph is fully retired. After this date, all apps receive a `403 Unauthorized` error when making requests to Azure AD Graph APIs, regardless of their extended access configuration. For more information, see [June 2024 update on Azure AD Graph API retirement](https://techcommunity.microsoft.com/t5/microsoft-entra-blog/june-2024-update-on-azure-ad-graph-api-retirement/ba-p/4094534).

The following request shows how to update an app to enable extended Azure AD Graph access. The ID used in this example is the object ID of the application, not the application ID. The request returns a `204 No Content` response code.

#### Option 1

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_blockazureadgraphaccess_option1"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/5c142e6f-0bd3-4e58-b510-8a106704f44f/authenticationBehaviors
Content-Type: application/json

{
    "blockAzureADGraphAccess": false
}
```

---

#### Option 2

<!-- {
  "blockType": "request",
  "name": "update_authenticationBehaviors_blockazureadgraphaccess_option2"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/5c142e6f-0bd3-4e58-b510-8a106704f44f
Content-Type: application/json

{
    "authenticationBehaviors": {
        "blockAzureADGraphAccess": false
    }
}
```


---

## Related content

- [authenticationBehaviors resource type](/graph/api/resources/authenticationbehaviors)
- [Migrate away from using email claims for user identification or authorization](/entra/identity-platform/migrate-off-email-claim-authorization)
- [The false identifier anti-pattern](https://techcommunity.microsoft.com/t5/microsoft-entra-azure-ad-blog/the-false-identifier-anti-pattern/ba-p/3846013)
