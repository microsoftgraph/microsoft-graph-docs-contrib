---
title: "Authentication and authorization basics"
description: "To call Microsoft Graph, you must register your app with the Microsoft identity platform, request permissions, and acquire an access token."
author: "jackson-woods"
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20
---

# Authentication and authorization basics

To call Microsoft Graph, your app must acquire an access token from the Microsoft identity platform. The access token contains information about your app and the permissions it has to access the resources and APIs available through Microsoft Graph. To get an access token, your app must be registered with the Microsoft identity platform and be authorized by either a user or an administrator to access the Microsoft Graph resources it needs.

This article provides an overview of the Microsoft identity platform, access tokens, and how your app can get access tokens. For more information about the Microsoft identity platform, see [What is the Microsoft identity platform?](/azure/active-directory/develop/v2-overview). If you know how to integrate an app with the Microsoft identity platform to get tokens, see information and samples specific to Microsoft Graph in the [next steps](#next-steps) section.

## Register your app with the Microsoft identity platform

Before your app can get a token from the Microsoft identity platform, it must be registered in the [Azure portal](https://portal.azure.com/). Registration integrates your app with the Microsoft identity platform and establishes the information that it uses to get tokens, including:

- **Application ID**: A unique identifier assigned by the Microsoft identity platform.
- **Redirect URI/URL**: One or more endpoints at which your app will receive responses from the Microsoft identity platform. (For native and mobile apps, the URI is assigned by the Microsoft identity platform.)
- **Client secret**: A password or a public/private key pair that your app uses to authenticate with the Microsoft identity platform. (Not needed for native or mobile apps.)

The properties configured during registration are used in the request. For example, in the following token request: *client_id* is the *application ID*, *redirect_uri* is one of your app's registered *redirect URIs*, and *client_secret* is the *client secret*.

```http
// Line breaks for legibility only

POST /common/oauth2/v2.0/token HTTP/1.1
Host: https://login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

client_id=6731de76-14a6-49ae-97bc-6eba6914391e
&scope=user.read%20mail.read
&code=OAAABAAAAiL9Kn2Z27UubvWFPbm0gLWQJVzCTE9UkP3pSx1aXxUjq3n8b2JRLk4OxVXr...
&redirect_uri=http%3A%2F%2Flocalhost%2Fmyapp%2F
&grant_type=authorization_code
&client_secret=JqQX2PNo9bpM0uEihUPzyrh    // NOTE: Only required for web apps
```

## Microsoft Graph permissions

Microsoft Graph exposes granular permissions that control the access that apps have to resources, like users, groups, and mail. As a developer, you decide which Microsoft Graph permissions to request for your app. When a user signs in to your app they, or, in some cases, an administrator, are given a chance to consent to these permissions. If the user consents, your app is given access to the resources and APIs that it has requested. For apps that access resources and APIs without a signed-in user, permissions can be pre-consented to by an administrator when the app is installed.

### Best practices for requesting permissions

[!INCLUDE [auth-use-least-privileged](../../includes/auth-use-least-privileged.md)]

### Delegated and application permissions

Microsoft Graph has two types of permissions:

- **Delegated permissions** are used by apps that have a signed-in user present. For these apps, either the user or an administrator consents to the permissions that the app requests and the app can act as the signed-in user when making calls to Microsoft Graph. Some delegated permissions can be consented by non-administrative users, but some higher-privileged permissions require [administrator consent](/azure/active-directory/develop/active-directory-v2-scopes#using-the-admin-consent-endpoint).  

- **Application permissions** are used by apps that run without a signed-in user present. For example, apps that run as background services or daemons. Application permissions can only be [consented by an administrator](/azure/active-directory/develop/active-directory-v2-scopes#requesting-consent-for-an-entire-tenant).

### Effective permissions

**Effective permissions** are the permissions that your app has when making requests to Microsoft Graph. The effective permissions are determined by a combination of the Microsoft Graph permissions that you granted to the app *and* the privileges of the signed-in user or the calling app. Within organizations, the policy or membership in one or more roles determine the privileges of the signed-in user or an app. It's important to understand the difference between the delegated and application permissions your app has and its effective permissions when making calls to Microsoft Graph.

#### Effective permissions in delegated versus application-only permission scenarios

- For delegated permissions, the effective permissions of your app are the least-privileged intersection of the delegated permissions the app has been granted (by consent) and the privileges of the currently signed-in user. Your app can never have more privileges than the signed-in user.

  Suppose that your app has been granted the *User.ReadWrite.All* delegated permission and calls the [Update user](/graph/api/user-update) API. This permission nominally grants your app permission to read and update the profile of every user in an organization. However, because of effective permissions, the following restrictions apply to the privileges of the signed-in user:
  - If the signed-in user is a global administrator, your app can update the profile of every user in the organization.
  - If the signed-in user isn't in an administrator role, your app can update *only* the profile of the signed-in user. It won't update the profiles of other users in the organization because the signed-in user doesn't have those privileges.

- For application permissions, the effective permissions of your app are the full level of privileges implied by the permission. For example, an app that has the *User.ReadWrite.All* application permission can update the profile of every user in the organization.

#### Comparison of delegated and application permissions

| Item | Delegated permissions | Application permissions |
|--|--|--|
| App type scenarios | Web / Mobile / single-page app (SPA) | Web / Daemon |
| Access context | [Get access on-behalf of a user](../auth-v2-user.md) | [Get access as a service](../auth-v2-service.md) |
| Who can consent | <li> Users can consent for their data <li> Admins can consent for all users | Only admin can consent |
| Other names | <li> scopes <li>OAuth2 permissions | <li> App roles <li>App-only permissions <li>Direct access permissions  |
| Result of consent | [oAuth2PermissionGrants](/graph/api/resources/oauth2permissiongrant) | [appRoleAssignments](/graph/api/resources/approleassignment) |


:::image type="content" source="/graph/images/auth-v2/permission-types.png" alt-text="Microsoft Graph exposes delegated and application permissions but authorizes requests based on the app's effective permissions." border="true":::

For a complete list of delegated and application permissions for Microsoft Graph, and which permissions require administrator consent, see the [Permissions reference](../permissions-reference.md).

## Access tokens

Access tokens that are issued by the Microsoft identity platform contain information (claims) that web APIs secured by the Microsoft identity platform, such as Microsoft Graph, use to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. The caller should treat access tokens as opaque strings because the contents of the token are intended for the API only. When calling Microsoft Graph, always protect access tokens by transmitting them over a secure channel that uses transport layer security (TLS).

The following example shows a Microsoft identity platform access token:

```jwt
EwAoA8l6BAAU7p9QDpi/D7xJLwsTgCg3TskyTaQAAXu71AU9f4aS4rOK5xoO/SU5HZKSXtCsDe0Pj7uSc5Ug008qTI+a9M1tBeKoTs7tHzhJNSKgk7pm5e8d3oGWXX5shyOG3cKSqgfwuNDnmmPDNDivwmi9kmKqWIC9OQRf8InpYXH7NdUYNwN+jljffvNTewdZz42VPrvqoMH7hSxiG7A1h8leOv4F3Ek/XbrnbEErTDLWrV6Lc3JHQMs0bYUyTBg5dThwCiuZ1evaT6BlMMLuSCVxdBGzXTBcvGwihFzZbyNoX+52DS5x+RbIEvd6KWOpQ6Ni+1GAawHDdNUiQTQFXRxLSHfc9fh7hE4qcD7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

To call Microsoft Graph, you attach the access token as a Bearer token to the Authorization header in an HTTP request. For example, the following call that returns the profile information of the signed-in user (the access token has been shortened for readability):

```http
GET https://graph.microsoft.com/v1.0/me/ HTTP/1.1
Host: graph.microsoft.com
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

Access tokens are a kind of [security tokens](/azure/active-directory/develop/security-tokens) provided by the Microsoft identity platform. They are short-lived but with variable default lifetimes. For more information about access tokens and how clients use access tokens, see [Access tokens](/azure/active-directory/develop/access-tokens#access-token-lifetime).

### Get an access token

Like most developers, you'll probably use authentication libraries to manage your token interactions with the Microsoft identity platform. Authentication libraries abstract many protocol details like validation, cookie handling, token caching, and maintaining secure connections, from the developer, and let you focus your development on your app's functionality. Microsoft publishes open-source client libraries and server middleware.

For the Microsoft identity platform endpoint:

- Microsoft Authentication Library (MSAL) client libraries are available for .NET, JavaScript, Android, and Objective-C. All platforms are in production-supported preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and for Node.js (Microsoft the Microsoft identity platform Passport.js).
- The Microsoft identity platform is compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft server middleware, and compatible third-party libraries, see [Microsoft identity platform authentication libraries](/azure/active-directory/develop/active-directory-v2-libraries).

You don't need to use an authentication library to get an access token. To learn about directly using the Microsoft identity platform endpoints without the help of an authentication library, see [Microsoft identity platform authentication](/azure/active-directory/develop/authentication-scenarios).

## Next steps

- To get started with authentication and authorizing your app to access resources, see [Getting started: choose an application scenario](/azure/active-directory/develop/v2-overview#getting-started).
- To see the permissions that you can use with Microsoft Graph, see [Permissions](../permissions-reference.md).
- If you're a Microsoft Cloud Solution provider interested in accessing partner-managed customer data through Microsoft Graph, see [Manage app access (CSPs)](../auth-cloudsolutionprovider.md).

If you're ready to jump into code, you can use the following resources to help you implement authentication and authorization with the Microsoft identity platform in your app.

### Microsoft Graph training and samples

To help you get started quickly, we've created a series of training modules and other resources that show you how to authenticate and use the API on various platforms.

- Use the [Get started](https://developer.microsoft.com/graph/get-started) page to find the libraries, samples, training content, and other resources for your favorite platform.
- To get running quickly with a pre-configured sample for your platform, see the [Microsoft Graph Quick Start](https://developer.microsoft.com/graph/quick-start).
- See our [Microsoft Graph samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=sample&type=&language=) on GitHub.

### Microsoft identity platform samples and documentation

The Microsoft identity platform documentation contains articles and samples that specifically focus on authentication and authorization with the Microsoft identity platform.

- Visit the [Microsoft identity platform endpoint documentation](/azure/active-directory/develop/active-directory-appmodel-v2-overview) to learn how to register an application with the Microsoft identity platform.
- The easiest place to start is in the [Microsoft identity platform endpoint documentation](/azure/active-directory/develop/active-directory-appmodel-v2-overview). This article contains links to overviews, protocol documentation, and getting started articles for different platforms that are all organized by the type of app you're developing.
- For samples using the Microsoft identity platform to secure different application types, see [Microsoft identity platform code samples (v2.0 endpoint)](/azure/active-directory/develop/sample-v2-code).
- For samples listed by client or server authentication library, see [Microsoft identity platform authentication libraries](/azure/active-directory/develop/active-directory-v2-libraries).
- Explore the Microsoft identity platform samples by platform in the [Azure Code gallery](https://azure.microsoft.com/resources/samples/?service=active-directory).

## See also

- [Microsoft identity platform access tokens](/azure/active-directory/develop/access-tokens)
- [Choose a Microsoft Graph authentication provider based on scenario](../sdks/choose-authentication-providers.md)
- [Microsoft identity platform endpoint documentation](/azure/active-directory/develop/active-directory-appmodel-v2-overview)
