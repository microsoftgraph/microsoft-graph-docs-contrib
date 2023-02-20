---
title: "Authentication and authorization basics"
description: "To call Microsoft Graph, you must register your app with the Microsoft identity platform, request permissions, and acquire an access token."
author: "jackson-woods"
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20
ms.date: 12/08/2022
---

# Authentication and authorization basics

To get an access token, your app must be registered with the Microsoft identity platform and be granted Microsoft Graph permissions by a user or administrator.

This article provides an overview of the Microsoft identity platform, access tokens, and how your app can get access tokens. For more information about the Microsoft identity platform, see [What is the Microsoft identity platform?](/azure/active-directory/develop/v2-overview). If you know how to integrate an app with the Microsoft identity platform to get tokens, see information and samples specific to Microsoft Graph in the [next steps](#see-also) section.

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

## Access scenarios

The method that an app uses to authenticate with the Microsoft identity platform will depend on how you want the app to access the data. This access can be in one of two ways as illustrated in the following image.

+ **Delegated access**, an app acting on behalf of a signed-in user.
+ **App-only access**, an app acting with its own identity.

:::image type="content" source="../images/access-scenarios.png" alt-text="Illustration of delegated and app-only access scenarios in the Microsoft identity platform.":::

### Delegated access (access on behalf of a user)

In this access scenario, a user has signed into a client application and the client application calls Microsoft Graph on behalf of the user. *Both the client and the user must be authorized to make the request*.

Delegated access requires *delegated permissions*, also referred to as *scopes*. Scopes are permissions that are exposed by a given resource and they represent the operations that an app can perform on behalf of a user.

Because both the app and the user must be authorized to make the request, the resource grants the client app the delegated permissions, for the client app to access data on behalf of the specified user. For the user, the actions that they can perform on the resource rely on the permissions that they have to access the resource. For example, the user might be the owner of the resource, or they might be assigned a particular role through a role-based access control system (RBAC) such as [Azure AD RBAC](/azure/active-directory/roles/custom-overview).

### App-only access (access without a user)

In this access scenario, the application can interact with data on its own, without a signed in user. *App-only* access is used in scenarios such as automation and backup, and is mostly used by apps that run as background services or daemons. It's suitable when it's undesirable to have a user signed in, or when the data required can't be scoped to a single user.

Apps get privileges to call Microsoft Graph with their own identity through one of the following ways:

+ When the app is assigned *application permissions*, also called *app roles*.
+ When the app is assigned ownership of the resource that it intends to manage.

> [!NOTE]
> An app can also get permissions through [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference). These permissions don't limit the app to calling Microsoft Graph APIs.

## Microsoft Graph permissions

Microsoft Graph exposes granular permissions that control the access that apps have to Microsoft Graph resources, like users, groups, and mail. As a developer, you decide which Microsoft Graph permissions to request for your app based on the access scenario and the operations you want to perform.

Microsoft Graph exposes two types of permissions for the supported [access scenarios](#access-scenarios):
+ Delegated permissions
+ Application permissions

Delegated permissions, also called *scopes*, allow the application to act on behalf of the signed-in user. Application permissions, also called *app roles*, allow the app to access data on its own, without a signed-in user.

When a user signs in to your app they, or, in some cases, an administrator, are given a chance to consent to the delegated permissions. If they grant consent, your app is given access to the resources, and APIs that it has requested. For apps that access resources and APIs without a signed-in user, the application permissions can be pre-consented to by an administrator when the app is installed.

[!INCLUDE [auth-use-least-privileged](../../includes/auth-use-least-privileged.md)]

For more information about Microsoft Graph permissions and how to use them, see the [Overview of Microsoft Graph permissions](../permissions-overview.md).

## Access tokens

An application makes an authentication request to get access tokens that it uses to call an API. Access tokens that are issued by the Microsoft identity platform contain information (claims). Web APIs secured by the Microsoft identity platform, such as Microsoft Graph, use the claims to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. The caller should treat access tokens as opaque strings because the contents of the token are intended for the API only. When calling Microsoft Graph, always protect access tokens by transmitting them over a secure channel that uses transport layer security (TLS).

The following example shows a Microsoft identity platform access token:

```jwt
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Imk2bEdrM0ZaenhSY1ViMkMzbkVRN3N5SEpsWSJ9.eyJhdWQiOiI2ZTc0MTcyYi1iZTU2LTQ4NDMtOWZmNC1lNjZhMzliYjEyZTMiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3L3YyLjAiLCJpYXQiOjE1MzcyMzEwNDgsIm5iZiI6MTUzNzIzMTA0OCwiZXhwIjoxNTM3MjM0OTQ4LCJhaW8iOiJBWFFBaS84SUFBQUF0QWFaTG8zQ2hNaWY2S09udHRSQjdlQnE0L0RjY1F6amNKR3hQWXkvQzNqRGFOR3hYZDZ3TklJVkdSZ2hOUm53SjFsT2NBbk5aY2p2a295ckZ4Q3R0djMzMTQwUmlvT0ZKNGJDQ0dWdW9DYWcxdU9UVDIyMjIyZ0h3TFBZUS91Zjc5UVgrMEtJaWpkcm1wNjlSY3R6bVE9PSIsImF6cCI6IjZlNzQxNzJiLWJlNTYtNDg0My05ZmY0LWU2NmEzOWJiMTJlMyIsImF6cGFjciI6IjAiLCJuYW1lIjoiQWJlIExpbmNvbG4iLCJvaWQiOiI2OTAyMjJiZS1mZjFhLTRkNTYtYWJkMS03ZTRmN2QzOGU0NzQiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhYmVsaUBtaWNyb3NvZnQuY29tIiwicmgiOiJJIiwic2NwIjoiYWNjZXNzX2FzX3VzZXIiLCJzdWIiOiJIS1pwZmFIeVdhZGVPb3VZbGl0anJJLUtmZlRtMjIyWDVyclYzeERxZktRIiwidGlkIjoiNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3IiwidXRpIjoiZnFpQnFYTFBqMGVRYTgyUy1JWUZBQSIsInZlciI6IjIuMCJ9.pj4N-w_3Us9DrBLfpCt
```

To call Microsoft Graph, the app makes an authorization request by attaching the access token as a **Bearer** token to the **Authorization** header in an HTTP request. For example, the following call that returns the profile information of the signed-in user (the access token has been shortened for readability):

```http
GET https://graph.microsoft.com/v1.0/me/ HTTP/1.1
Host: graph.microsoft.com
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

Access tokens are a kind of **security token** that the Microsoft identity platform provides. They're short-lived but with variable default lifetimes.

### Get an access token

Like most developers, you'll probably use authentication libraries to manage your token interactions with the Microsoft identity platform. Authentication libraries abstract many protocol details like validation, cookie handling, token caching, and maintaining secure connections, from the developer, and let you focus your development on your app's functionality. Microsoft publishes open-source client libraries and server middleware.

For the Microsoft identity platform endpoint:

- Microsoft Authentication Library (MSAL) client libraries are available for various frameworks including for .NET, JavaScript, Android, and iOS. All platforms are in production-supported preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and for Node.js (Microsoft identity platform Passport.js).
- The Microsoft identity platform is also compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft server middleware, and compatible third-party libraries, see [Microsoft identity platform documentation](#see-also).

You don't need to use an authentication library to get an access token. To learn about directly using the Microsoft identity platform endpoints without the help of an authentication library, see [Microsoft identity platform documentation libraries](#see-also).

## Additional resources

- [Microsoft identity platform documentation](/azure/active-directory/develop/).
- [Choose a Microsoft Graph authentication provider based on scenario](../sdks/choose-authentication-providers.md).
- [Overview of Microsoft Graph permissions](/graph/permissions-overview).
- Use the [Get started](https://developer.microsoft.com/graph/get-started) page to find the libraries, samples, training content, and other resources for your favorite platform.
- See our [Microsoft Graph samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=sample&type=&language=) on GitHub.

## Next steps

Get started by registering your app.

> [!div class="nextstepaction"]
> [Register your application >](../auth-register-app-v2.md)
