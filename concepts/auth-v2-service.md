---
title: "Get access without a user"
description: "Learn how an app obtains an access token from the Microsoft identity platform and calls Microsoft Graph with its own identity."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.topic: how-to
ms.localizationpriority: high
ms.subservice: entra-applications
ms.custom: graphiamtop20, sfi-image-nochange
ms.date: 08/29/2025
#customer intent: As a developer, I want to understand how my app can call Microsoft Graph on behalf of a signed-in user to access resources in a tenant.
---

# Get access without a user

To call Microsoft Graph, an app must get an access token from the Microsoft identity platform. This access token shows whether the app is authorized to access Microsoft Graph on behalf of a signed-in user or with its own identity. This article explains how an app can [access Microsoft Graph with its own identity](./auth/auth-concepts.md#access-scenarios), also called *app-only access*.

This article explains the raw HTTP requests an app makes to call Microsoft Graph with its own identity by using the popular [OAuth 2.0 client credentials grant flow](/entra/identity-platform/v2-oauth2-client-creds-grant-flow). Typically, you don't need to write raw HTTP requests and instead use a Microsoft-built or supported authentication library that helps you get access tokens and call Microsoft Graph. For more information, see [Use the Microsoft Authentication Library (MSAL)](#use-the-microsoft-authentication-library-msal).

In this article, you complete the following steps in using the client credentials flow:

1. Configure Microsoft Graph application permissions on the app.
1. Request administrator consent.
1. Request an access token.
1. Call Microsoft Graph by using the access token.

## Prerequisites

Before proceeding with the steps in this article:

1. Understand the authentication and authorization concepts in the Microsoft identity platform. For more information, see [Authentication and authorization basics](auth/auth-concepts.md).
1. Register the app with Microsoft Entra ID. For more information, see [Register an application with the Microsoft identity platform](auth-register-app-v2.md). Save the following values from the app registration:
    - The application ID (referred to as Object ID on the Microsoft Entra admin center).
    - A client secret (application password), a certificate, or a federated identity credential.
    - A redirect URI for the app to receive token responses from Microsoft Entra ID.
    - A redirect URI for the service to receive admin consent responses *if* the app implements functionality to request administrator consent.

## Step 1: Configure permissions for Microsoft Graph

Microsoft Graph exposes [application permissions](./permissions-overview.md#application-permissions) for apps that call Microsoft Graph with their own identity. These permissions always require administrator consent.

Preconfigure the application permissions the app needs when you register the app. An administrator can consent to these permissions either by using the [Microsoft Entra admin center](https://entra.microsoft.com) when they install the app in their organization, or you can provide a sign-up experience in the app through which administrators can consent to the permissions you configured. Once Microsoft Entra ID records the administrator consent, the app can request tokens without having to request consent again.

To configure application permissions for the app in the app registrations experience on the Microsoft Entra admin center, follow these steps:

- On the application's **API permissions** page, choose **Add a permission**.
- Select **Microsoft Graph** > select **Application permissions**.
- In the **Select Permissions** dialog, choose the permissions to configure to the app.

The following screenshot shows the **Select Permissions** dialog box for Microsoft Graph application permissions.

:::image type="content" source="./images/auth-v2/v2-application-permissions.png" alt-text="Select Permissions window for Microsoft Graph application permissions." border="true":::

> [!IMPORTANT]
> 
> Always configure the least privileged set of permissions required by the app. For more information, see [Best practices for using Microsoft Graph permissions](./permissions-overview.md#best-practices-for-using-microsoft-graph-permissions).

## Step 2: Request administrator consent

Administrators can grant the permissions your app needs at the [Microsoft Entra admin center](https://entra.microsoft.com). However, if you don't have access to the Microsoft Entra admin center, you can provide a sign-up experience for administrators by using the Microsoft identity platform `/adminconsent` endpoint.

> [!IMPORTANT]
> 
> When you change the configured permissions, you must also repeat the admin consent process. Changes made in the app registration portal aren't reflected until an authorized administrator such as a privileged role administrator reconsents to the app.

### Request

# [HTTP](#tab/http)
```http
// Line breaks are for legibility only.

GET https://login.microsoftonline.com/{tenant}/adminconsent
?client_id=6731de76-14a6-49ae-97bc-6eba6914391e
&state=12345
&redirect_uri=https://localhost/myapp/permissions  HTTP/1.1
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://login.microsoftonline.com/{tenant}/adminconsent?client_id=6731de76-14a6-49ae-97bc-6eba6914391e&redirect_id=https%3A%2F%2Flocalhost%2Fmyapp%2Fpermissions&state=12345'
```

---

| Parameter     | Condition   | Description 
|:--------------|:------------|:------------
| tenant        | Required    | The tenant that you want to request permission from. The value can be in GUID or a friendly name format. If you don't know which tenant the user belongs to and you want to let them sign in with any tenant, use `common`.
| client_id     | Required    | The application ID that the [Azure app registration portal](https://go.microsoft.com/fwlink/?linkid=2083908) assigned to your app.
| redirect_uri  | Required    | The redirect URI where you want the response to be sent for your app to handle. It must match one of the redirect URIs that you registered in the portal. It must be URL encoded and it can have additional path segments.
| state         | Recommended | A value that is included in the request that also is returned in the token response. It can be a string of any content that you want. The state is used to encode information about the user's state in the app before the authentication request occurred, such as the page or view they were on.

### Administrator consent experience

With requests to the `/adminconsent` endpoint, Microsoft Entra ID enforces that only an authorized administrator can sign in to complete the request. The administrator is asked to approve all the application permissions that you requested for your app in the app registration portal.

The following screenshot is an example of the consent dialog that Microsoft Entra ID presents to the administrator:

:::image type="content" source="./images/auth-v2/admin-consent.png" alt-text="The admin consent dialog indicates the permissions to consent to and what actions the permissions allow." border="true":::

### Response

If the administrator approves the permissions for your application, the successful response looks like this:

```http
// Line breaks are for legibility only.

https://localhost/myapp/permissions?admin_consent=True&tenant=38d49456-54d4-455d-a8d6-c383c71e0a6d&state=12345#
```

| Parameter     | Description
|:--------------|:------------
| tenant        | The tenant that grants your application the permissions that it requested, in GUID format.
| state         | A value that is included in the request that also is returned in the token response. It can be a string of any content that you want. The state encodes information about the user's state in the app before the authentication request occurred, such as the page or view they were on.
| admin_consent | Set to **True**.

## Step 3: Request an access token

In the OAuth 2.0 client credentials grant flow, use the application ID and client secret values that you saved when you registered your app to request an access token directly from the Microsoft identity platform `/token` endpoint.

Specify the preconfigured permissions by passing `https://graph.microsoft.com/.default` as the value for the `scope` parameter in the token request.

### Token request

Send a POST request to the `/token` identity platform endpoint to acquire an access token. In this request, the client uses the client secret.

# [HTTP](#tab/http)
```http
// Line breaks are for legibility only.

POST https://login.microsoftonline.com/{tenant}/oauth2/v2.0/token HTTP/1.1
Host: login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

client_id=535fb089-9ff3-47b6-9bfb-4f1264799865
&scope=https%3A%2F%2Fgraph.microsoft.com%2F.default
&client_secret=qWgdYA....L1qKv5bPX
&grant_type=client_credentials
```

# [cURL](#tab/curl)
```bash
curl --location --request POST 'https://login.microsoftonline.com/{tenant}/oauth2/v2.0/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=535fb089-9ff3-47b6-9bfb-4f1264799865' \
--data-urlencode 'scope=https://graph.microsoft.com/.default' \
--data-urlencode 'client_secret=qWgdYA....L1qKv5bPX' \
--data-urlencode 'grant_type=client_credentials'
```

---

| Parameter     | Condition | Description 
|:--------------|:----------|:------------
| tenant        | Required  | The tenant that you want to request permission from. The value can be in GUID or a friendly name format.
| client_id     | Required  | The application ID that the [Azure app registration portal](https://go.microsoft.com/fwlink/?linkid=2083908) assigned when you registered your app.
| scope         | Required  | The value passed for the **scope** parameter in this request should be the identifier (app ID URI) of the resource you want, affixed with the `.default` suffix. For example, the Microsoft Graph resource app ID URI is `https://graph.microsoft.com/`. For Microsoft Graph, the value of **scope** is therefore `https://graph.microsoft.com/.default`. This value informs the Microsoft identity platform endpoint to include in the access token all the app-level permissions the admin consented to.
| client_secret | Required  | The client secret that you generated for your app in the app registration portal. Ensure that it's URL encoded.
| grant_type    | Required  | Must be `client_credentials`.

#### Token response

A successful response looks like this:

```json
{
  "token_type": "Bearer",
  "expires_in": 3599,
  "ext_expires_in":3599,
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6Ik1uQ19WWmNBVGZNNXBP..."
}
```

| Parameter      | Description                                                                                   |
|:---------------|:----------------------------------------------------------------------------------------------|
| access_token   | The requested access token. Your app can use this token in calls to Microsoft Graph.          |
| expires_in     | How long the access token is valid (in seconds).                                              |
| ext_expires_in | Used to indicate an extended lifetime for the access token and to support resiliency when the token issuance service isn't responding. |
| token_type     | Indicates the token type value. The only type that Microsoft Entra ID supports is `Bearer`.             |

## Step 4: Use the access token to call Microsoft Graph

After you get an access token, the app uses it to call Microsoft Graph by attaching the access token as a **Bearer** token to the **Authorization** header in an HTTP request. The following request gets all users in the tenant. The app must have the _User.Read.All_ permission to call this API.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/users  HTTP/1.1
Authorization: Bearer eyJ0eXAiO ... 0X2tnSQLEANnSPHY0gKcgw
Host: graph.microsoft.com
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/users' \
--header 'Authorization: Bearer eyJ0eXAiO ... 0X2tnSQLEANnSPHY0gKcgw' \
--data ''
```

---

A successful response looks like this (some response headers are removed):

```json
HTTP/1.1 200 OK
Content-Type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
request-id: f45d08c0-6901-473a-90f5-7867287de97f
client-request-id: f45d08c0-6901-473a-90f5-7867287de97f
OData-Version: 4.0
Date: Wed, 26 Apr 2017 19:53:49 GMT
Content-Length: 407

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users",
    "value": [
        {
            "businessPhones": [],
            "displayName": "Conf Room Adams",
            "givenName": null,
            "jobTitle": null,
            "mail": "Adams@Contoso.com",
            "mobilePhone": null,
            "officeLocation": null,
            "preferredLanguage": null,
            "surname": null,
            "userPrincipalName": "Adams@Contoso.com",
            "id": "8afc02cb-4d62-4dba-b536-9f6d73e9be26"
        },
        {
            "businessPhones": [
                "+1 425 555 0109"
            ],
            "displayName": "Adele Vance",
            "givenName": "Adele",
            "jobTitle": "Retail Manager",
            "mail": "AdeleV@Contoso.com",
            "mobilePhone": null,
            "officeLocation": "18/2111",
            "preferredLanguage": null,
            "surname": "Vance",
            "userPrincipalName": "AdeleV@Contoso.com",
            "id": "59bb3898-0621-4414-ac61-74f9d7201355"
        }
    ]
}
```

## Supported app scenarios and resources

Apps that call Microsoft Graph with their own identity fall into one of two categories:

- [Background services (daemons)](/entra/identity-platform/scenario-daemon-app-registration) that run on a server without a signed-in user.
- Apps that have a signed-in user but also call Microsoft Graph with their own identity. For example, to use functionality that requires more elevated privileges than the user has.

In this article, the app uses a client secret as the credential. You can optionally configure a certificate or a federated identity credential.

For more information about apps that call Microsoft Graph with their own identity and use the client credentials flow, see [Authentication flows and application scenarios: Daemon app that calls a web API in the daemon's name](/entra/identity-platform/authentication-flows-app-scenarios#daemon-app-that-calls-a-web-api-in-the-daemons-name).

## Use the Microsoft Authentication Library (MSAL)

In this article, you see the low-level protocol details required only when manually crafting and issuing raw HTTP requests to execute the client credentials flow. In production apps, use a [Microsoft-built or supported authentication library](/entra/identity-platform/msal-overview), such as the Microsoft Authentication Library (MSAL), to get security tokens and call protected web APIs such as Microsoft Graph.

MSAL and other supported authentication libraries simplify the process for you by handling details such as validation, cookie handling, token caching, and secure connections. These libraries let you focus on the functionality of your application.

Access the [Microsoft identity platform code samples](/entra/identity-platform/sample-v2-code?tabs=apptype#service--daemon) to see how to use MSAL to get access tokens and call Microsoft Graph.

## Related content

- Explore [Microsoft Graph tutorials](/graph/tutorials) for code samples that use different SDKs to create basic applications that authenticate with certificate-based credentials to access data in app-only scenarios.
- [Add a certificate to an app using Microsoft Graph](/graph/applications-how-to-add-certificate) shows a step-by-step process to add a certificate to an app for certificate-based authentication and app-only access to data.
