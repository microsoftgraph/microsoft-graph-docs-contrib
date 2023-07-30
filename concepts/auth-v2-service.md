---
title: "Get access without a user"
description: "Learn how an app obtains an access token from the Microsoft identity platform and calls Microsoft Graph with its own identity."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20
ms.date: 05/25/2023
---

# Get access without a user

To call Microsoft Graph, an app must obtain an access token from the Microsoft identity platform. This access token includes information about whether the app is authorized to access Microsoft Graph on behalf of a signed-in user or with its own identity. This article provides guidance on how an app can [access Microsoft Graph with its own identity](./auth/auth-concepts.md#access-scenarios), also called *app-only access*.

This article details the raw HTTP requests involved for an app to call Microsoft Graph with its own identity using a popular flow called the [OAuth 2.0 client credentials grant flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow). Alternatively, you can avoid writing raw HTTP requests and use a Microsoft-built or supported authentication library that handles many of these details for you and helps you to get access tokens and call Microsoft Graph. For more information, see [Use the Microsoft Authentication Library (MSAL)](#use-the-microsoft-authentication-library-msal).

## Prerequisites

Before proceeding with the steps in this article:

1. Understand the authentication and authorization concepts in the Microsoft identity platform. For more information, see [Authentication and authorization basics](auth/auth-concepts.md).
2. Register the app with Azure AD. For more information, see [Register an application with the Microsoft identity platform](auth-register-app-v2.md).

## Authentication and authorization steps

For an app to get authorization and access to Microsoft Graph using the client credentials flow, you must follow these five steps:

1. Register the app with Azure AD.
2. Configure Microsoft Graph application permissions on the app.
3. Request administrator consent.
4. Request an access token.
5. Call Microsoft Graph using the access token.

> [!TIP]
> [![Try steps 2-5 in Postman](./images/auth-v2/runinpostman.png)](https://app.getpostman.com/run-collection/f77994d794bab767596d)<br/>
> Try steps 2-5 in Postman. Don't forget to replace tokens and IDs!

## 1. Register the app

Before the app can use the Microsoft identity platform endpoint or call Microsoft Graph, it must be properly registered. [Follow the steps to register your app](./auth-register-app-v2.md) on the Azure portal.

From the app registration, save the following values:

- The application ID (referred to as Object ID on the Azure portal) assigned by the app registration portal.
- A client secret (application password), a certificate, or a federated identity credential.
- A redirect URI for the app to receive token responses from Azure AD.
- A redirect URI for the service to receive admin consent responses if the app implements functionality to request administrator consent.

## 2. Configure permissions for Microsoft Graph

Microsoft Graph exposes [application permissions](./permissions-overview.md#application-permissions) for apps that call Microsoft Graph under their own identity. These permissions always require administrator consent.

You pre-configure the application permissions the app needs when you register the app. An administrator can consent to these permissions either using the [Azure portal](https://portal.azure.com) when they install the app in their organization, or you can provide a sign-up experience in the app through which administrators can consent to the permissions you configured. Once Azure AD records the administrator consent, the app can request tokens without having to request consent again.

To configure application permissions for the app in the [Azure app registrations portal](https://go.microsoft.com/fwlink/?linkid=2083908), follow these steps:

- Under the application's **API permissions** page, choose **Add a permission**.
- Select **Microsoft Graph**.
- Select **Application permissions**.
- In the **Select Permissions** dialog, choose the permissions to configure to the app.

The following screenshot shows the **Select Permissions** dialog box for Microsoft Graph application permissions.

:::image type="content" source="./images/auth-v2/v2-application-permissions.png" alt-text="Select Permissions window for Microsoft Graph application permissions." border="true":::

> [!IMPORTANT]
> 
> Always configure the least privileged set of permissions required by the app. For more information, see [Best practices for using Microsoft Graph permissions](./permissions-overview.md#best-practices-for-using-microsoft-graph-permissions).

## 3. Request administrator consent

Administrators can grant the permissions your app needs at the [Azure portal](https://portal.azure.com). However, when you don't have access to the Azure portal, you can provide a sign-up experience for administrators by using the Microsoft identity platform `/adminconsent` endpoint.

> [!IMPORTANT]
> 
> When you change the configured permissions, you must also repeat the admin consent process. Changes made in the app registration portal will not be reflected until an authorized administrator such as a global administrator reconsents to the app.

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
| tenant        | Required    | The directory tenant that you want to request permission from. The value can be in GUID or a friendly name format. If you don't know which tenant the user belongs to and you want to let them sign in with any tenant, use `common`.
| client_id     | Required    | The application ID that the [Azure app registration portal](https://go.microsoft.com/fwlink/?linkid=2083908) assigned to your app.
| redirect_uri  | Required    | The redirect URI where you want the response to be sent for your app to handle. It must match one of the redirect URIs that you registered in the portal. It must be URL encoded and it can have additional path segments.
| state         | Recommended | A value that is included in the request that also is returned in the token response. It can be a string of any content that you want. The state is used to encode information about the user's state in the app before the authentication request occurred, such as the page or view they were on.

### Administrator consent experience

With requests to the `/adminconsent` endpoint, Azure AD enforces that only an authorized administrator can sign in to complete the request. The administrator is asked to approve all the application permissions that you've requested for your app in the app registration portal.

The following screenshot is an example of the consent dialog that Azure AD presents to the administrator:

:::image type="content" source="./images/auth-v2/admin-consent.png" alt-text="Administrator consent dialog." border="true":::

### Response

If the administrator approves the permissions for your application, the successful response looks like this:

```http
// Line breaks are for legibility only.

https://localhost/myapp/permissions?admin_consent=True&tenant=38d49456-54d4-455d-a8d6-c383c71e0a6d&state=12345#
```

| Parameter     | Description
|:--------------|:------------
| tenant        | The directory tenant that granted your application the permissions that it requested, in GUID format.
| state         | A value that is included in the request that also is returned in the token response. It can be a string of any content that you want. The state is used to encode information about the user's state in the app before the authentication request occurred, such as the page or view they were on.
| admin_consent | Set to **True**.


> **Try**: You can try this for yourself by pasting the following request in a browser. If you sign in as a global administrator for an Azure AD tenant, you will be presented with the administrator consent dialog box for the app.
> 
> https://login.microsoftonline.com/common/adminconsent?client_id=6731de76-14a6-49ae-97bc-6eba6914391e&state=12345&redirect_uri=https://localhost/myapp/permissions 

## 4. Request an access token

In the OAuth 2.0 client credentials grant flow, you use the application ID and client secret values that you saved when you registered your app to request an access token directly from the Microsoft identity platform `/token` endpoint.

You specify the pre-configured permissions by passing `https://graph.microsoft.com/.default` as the value for the `scope` parameter in the token request.

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
&client_secret=qWgdYAmab0YSkuL1qKv5bPX
&grant_type=client_credentials
```

# [cURL](#tab/curl)
```bash
curl --location --request POST 'https://login.microsoftonline.com/{tenant}/oauth2/v2.0/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=535fb089-9ff3-47b6-9bfb-4f1264799865' \
--data-urlencode 'scope=https://graph.microsoft.com/.default' \
--data-urlencode 'client_secret=qWgdYAmab0YSkuL1qKv5bPX' \
--data-urlencode 'grant_type=client_credentials'
```

---

| Parameter     | Condition | Description 
|:--------------|:----------|:------------
| tenant        | Required  | The directory tenant that you want to request permission from. The value can be in GUID or a friendly name format.
| client_id     | Required  | The application ID that the [Azure app registration portal](https://go.microsoft.com/fwlink/?linkid=2083908) assigned when you registered your app.
| scope         | Required  | The value passed for the **scope** parameter in this request should be the identifier (app ID URI) of the resource you want, affixed with the `.default` suffix. For example, the Microsoft Graph resource app ID URI is `https://graph.microsoft.com/`. For Microsoft Graph, the value of **scope** is therefore `https://graph.microsoft.com/.default`. This value informs the Microsoft identity platform endpoint to include in the access token all the app-level permissions the admin has consented to.
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
| token_type     | Indicates the token type value. The only type that Azure AD supports is `Bearer`.             |

## 5. Use the access token to call Microsoft Graph

After you have an access token, the app uses it to call Microsoft Graph by attaching the access token as a **Bearer** token to the **Authorization** header in an HTTP request. The following request gets all users in the tenant. The app must have the _User.Read.All_ permission to call this API.

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

A successful response looks like this (some response headers have been removed):

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

Apps that call Microsoft Graph under their own identity fall into one of two categories:

- [Background services (daemons)](/azure/active-directory/develop/scenario-daemon-overview) that run on a server without a signed-in user.
- Apps that have a signed-in user but also call Microsoft Graph with their own identity. For example, to use functionality that requires more elevated privileges than the user has.

In this article, the app used a client secret as the credential. You can optionally configure a certificate or a federated identity credential.

For more information about apps that call Microsoft Graph under their own identity and use the client credentials flow, see [Authentication flows and application scenarios: Daemon app that calls a web API in the daemon's name](/azure/active-directory/develop/authentication-flows-app-scenarios#daemon-app-that-calls-a-web-api-in-the-daemons-name).

## Use the Microsoft Authentication Library (MSAL)

In this article, you walked through the low-level protocol details usually required only when manually crafting and issuing raw HTTP requests to execute the client credentials flow. In production apps, use a [Microsoft-built or supported authentication library](/azure/active-directory/develop/msal-overview), such as the Microsoft Authentication Library (MSAL), to get security tokens and call protected web APIs such as Microsoft Graph.

MSAL and other supported authentication libraries simplify the process for you by handling details such as validation, cookie handling, token caching, and secure connections, allowing you to focus on the functionality of your application.

Microsoft has built and maintains a wide selection of code samples that demonstrate usage of supported authentication libraries with the Microsoft identity platform. To access these code samples, see the [Next steps](#next-steps).

## Next steps

This article is part of the following series of articles on authentication and authorization for Microsoft Graph through the Microsoft identity platform.

1. Article 1: [Authentication and authorization basics](./auth/auth-concepts.md)
1. Article 2: [Register an application with the Microsoft identity platform](./auth-register-app-v2.md)
1. Article 3: [Get access on behalf of a user](./auth-v2-user.md)
1. Article 4: [Get access without a user](./auth-v2-service.md)

Next, choose from code samples that are built and maintained by Microsoft to run custom apps that use supported authentication libraries and call Microsoft Graph with their own identities.

> [!div class="nextstepaction"]
> [Microsoft Graph tutorials >](/graph/tutorials)

<!--
> [!div class="nextstepaction"]
> [Microsoft identity platform code samples >](/azure/active-directory/develop/sample-v2-code#service--daemon)
-->
