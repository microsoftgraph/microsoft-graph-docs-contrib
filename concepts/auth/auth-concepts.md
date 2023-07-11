---
title: "Authentication and authorization basics"
description: "To call Microsoft Graph, you must register your app with the Microsoft identity platform, request permissions, and acquire an access token."
author: "jackson-woods"
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20
ms.date: 05/25/2023
---

# Authentication and authorization basics

Microsoft Graph is a protected web API for accessing data in Microsoft cloud services like Azure Active Directory and Microsoft 365. It's protected by the Microsoft identity platform, which uses [OAuth access tokens](/azure/active-directory/develop/active-directory-v2-protocols) to verify that an app is authorized to call Microsoft Graph.

This article provides an overview of the Microsoft identity platform, access tokens, and how your app can get access tokens. For more information about the Microsoft identity platform, see [What is the Microsoft identity platform?](/azure/active-directory/develop/v2-overview). If you know how to integrate an app with the Microsoft identity platform to get tokens, see information and samples specific to Microsoft Graph in the [next steps](#see-also) section.

## Register the application

Before your app can get an access token from the Microsoft identity platform, it must be registered in the [Azure portal](https://portal.azure.com/). Registration integrates your app with the Microsoft identity platform and establishes the information that it uses to get tokens, including:

- **Application ID**: A unique identifier assigned by the Microsoft identity platform.
- **Redirect URI/URL**: One or more endpoints at which your app receives responses from the Microsoft identity platform. (For native and mobile apps, the URI is assigned by the Microsoft identity platform.)
- **Client secret**: A password that your app uses to authenticate with the Microsoft identity platform. You can optionally use a certificate or a federated identity credential. This property isn't required for public clients like native, mobile and single page applications.

For more information, see [Register an application with the Microsoft identity platform](../auth-register-app-v2.md).

## Access scenarios

The method that an app uses to authenticate with the Microsoft identity platform depends on how you want the app to access the data. This access can be in one of two ways as illustrated in the following image.

- **Delegated access**, an app acting on behalf of a signed-in user.
- **App-only access**, an app acting with its own identity.

:::image type="content" source="../images/access-scenarios.png" alt-text="Illustration of delegated and app-only access scenarios in the Microsoft identity platform.":::

### Delegated access (access on behalf of a user)

In this access scenario, a user has signed into a client application and the client application calls Microsoft Graph on behalf of the user. *Both the client and the user must be authorized to make the request*.

Delegated access requires *delegated permissions*, also referred to as *scopes*. Scopes are permissions that are exposed by a given resource and they represent the operations that an app can perform on behalf of a user.

Because both the app and the user must be authorized to make the request, the resource grants the client app the delegated permissions, for the client app to access data on behalf of the specified user. For the user, the actions that they can perform on the resource rely on the permissions that they have to access the resource. For example, the user might be the owner of the resource, or they might be assigned a particular role through a role-based access control system (RBAC) such as [Azure AD RBAC](/azure/active-directory/roles/custom-overview).

### App-only access (access without a user)

In this access scenario, the application can interact with data on its own, without a signed in user. *App-only* access is used in scenarios such as automation and backup, and is mostly used by apps that run as background services or daemons. It's suitable when it's undesirable to have a user signed in, or when the data required can't be scoped to a single user.

Apps get privileges to call Microsoft Graph with their own identity through one of the following ways:

- When the app is assigned *application permissions*, also called *app roles*
- When the app is assigned ownership of the resource that it intends to manage

> [!NOTE]
> An app can also get privileges through permissions granted by a role-based access control system such as [Azure AD RBAC](/azure/active-directory/roles/permissions-reference).

## Microsoft Graph permissions

Microsoft Graph exposes granular permissions that control the access that apps have to Microsoft Graph resources, like users, groups, and mail. As a developer, you decide which Microsoft Graph permissions to request for your app based on the access scenario and the operations you want to perform.

Microsoft Graph exposes two types of permissions for the supported [access scenarios](#access-scenarios):

- Delegated permissions: Also called *scopes*, allow the application to act on behalf of the signed-in user.
- Application permissions: Also called *app roles*, allow the app to access data on its own, without a signed-in user.

When a user signs in to an app, the app must specify the permissions it needs to be included in the access token. These permissions:

- May be preauthorized for the application by an administrator.
- May be consented by the user directly.
- If not preauthorized, may require administrator privileges to grant consent. For example, for permissions with a greater potential security impact.

For more information about permissions and consent, see [Introduction to permissions and consent](/azure/active-directory/develop/permissions-consent-overview#consent).

[!INCLUDE [auth-use-least-privileged](../../includes/auth-use-least-privileged.md)]

For more information about Microsoft Graph permissions and how to use them, see the [Overview of Microsoft Graph permissions](../permissions-overview.md).

## Access tokens

An application makes an authentication request to the Microsoft identity platform to get access tokens that it uses to call an API, such as Microsoft Graph. Access tokens that the Microsoft identity platform issues contain *claims* which are details about the application and in delegated access scenarios, the user. Web APIs that are secured by the Microsoft identity platform, such as Microsoft Graph, use the claims to validate the caller and to ensure that the caller has the proper privileges to perform the operation they're requesting. The caller should treat access tokens as opaque strings because the contents of the token are intended for the API only. When calling Microsoft Graph, always protect access tokens by transmitting them over a secure channel that uses transport layer security (TLS).

The following example shows a Microsoft identity platform access token:

```jwt
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Imk2bEdrM0ZaenhSY1ViMkMzbkVRN3N5SEpsWSJ9.eyJhdWQiOiI2ZTc0MTcyYi1iZTU2LTQ4NDMtOWZmNC1lNjZhMzliYjEyZTMiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3L3YyLjAiLCJpYXQiOjE1MzcyMzEwNDgsIm5iZiI6MTUzNzIzMTA0OCwiZXhwIjoxNTM3MjM0OTQ4LCJhaW8iOiJBWFFBaS84SUFBQUF0QWFaTG8zQ2hNaWY2S09udHRSQjdlQnE0L0RjY1F6amNKR3hQWXkvQzNqRGFOR3hYZDZ3TklJVkdSZ2hOUm53SjFsT2NBbk5aY2p2a295ckZ4Q3R0djMzMTQwUmlvT0ZKNGJDQ0dWdW9DYWcxdU9UVDIyMjIyZ0h3TFBZUS91Zjc5UVgrMEtJaWpkcm1wNjlSY3R6bVE9PSIsImF6cCI6IjZlNzQxNzJiLWJlNTYtNDg0My05ZmY0LWU2NmEzOWJiMTJlMyIsImF6cGFjciI6IjAiLCJuYW1lIjoiQWJlIExpbmNvbG4iLCJvaWQiOiI2OTAyMjJiZS1mZjFhLTRkNTYtYWJkMS03ZTRmN2QzOGU0NzQiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhYmVsaUBtaWNyb3NvZnQuY29tIiwicmgiOiJJIiwic2NwIjoiYWNjZXNzX2FzX3VzZXIiLCJzdWIiOiJIS1pwZmFIeVdhZGVPb3VZbGl0anJJLUtmZlRtMjIyWDVyclYzeERxZktRIiwidGlkIjoiNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3IiwidXRpIjoiZnFpQnFYTFBqMGVRYTgyUy1JWUZBQSIsInZlciI6IjIuMCJ9.pj4N-w_3Us9DrBLfpCt
```

Access tokens are a kind of **security token** that the Microsoft identity platform provides. They're short-lived but with variable default lifetimes.

To call Microsoft Graph, the app makes an authorization request by attaching the access token as a **Bearer** token to the **Authorization** header in an HTTP request. For example, the following call that returns the profile information of the signed-in user (the access token has been shortened for readability):

```http
GET https://graph.microsoft.com/v1.0/me/ HTTP/1.1
Host: graph.microsoft.com
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

### Get an access token

We recommend that you use authentication libraries to manage your token interactions with the Microsoft identity platform. Authentication libraries abstract many protocol details like validation, cookie handling, token caching, and maintaining secure connections, that lets you focus your development on your app's functionality. Microsoft publishes open-source client libraries and server middleware.

For the Microsoft identity platform endpoint:

- Microsoft Authentication Library (MSAL) client libraries are available for various frameworks including for .NET, JavaScript, Android, and iOS. All platforms are in production-supported preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and for Node.js (Microsoft identity platform Passport.js).
- The Microsoft identity platform is also compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft server middleware, and compatible third-party libraries, see [Microsoft identity platform documentation](/azure/active-directory/develop/).

You don't need to use an authentication library to get an access token. To learn about directly using the Microsoft identity platform endpoints without the help of an authentication library, see the following articles:

- [Get access on behalf of a user](../auth-v2-user.md)
- [Get access without a user](../auth-v2-service.md)

## See also

- [Microsoft identity platform documentation](/azure/active-directory/develop/).
- [Choose a Microsoft Graph authentication provider based on scenario](../sdks/choose-authentication-providers.md).
- [Overview of Microsoft Graph permissions](/graph/permissions-overview).
- Use the [Get started](https://developer.microsoft.com/graph/get-started) page to find the libraries, samples, training content, and other resources for your favorite platform.
- See our [Microsoft Graph samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=sample&type=&language=) on GitHub.
