---
title: "Authentication and authorization basics"
description: "To call Microsoft Graph, you must register your app with the Microsoft identity platform, request permissions, and acquire an access token."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.topic: concept-article
ms.localizationpriority: high
ms.subservice: entra-applications
ms.custom: graphiamtop20
ms.date: 12/19/2024
#Customer intent: As a developer, I want to understand how to authenticate and authorize my app to call Microsoft Graph.
---

# Authentication and authorization basics

Microsoft Graph is a protected web API gateway for accessing data in Microsoft cloud services like Microsoft Entra ID and Microsoft 365. It's protected by the [Microsoft identity platform](/entra/identity-platform/v2-overview), which verifies that an app is authorized to call Microsoft Graph.

This article provides an overview of the requirements for an app to be authorized to access data via any Microsoft Graph API. If you're already familiar with how authentication and authorization works, start testing some [code samples](/entra/identity-platform/sample-v2-code) for apps that call Microsoft Graph APIs.

## Register the application

Before your app can be authorized to call a Microsoft Graph API, it must be registered in the [Microsoft Entra admin center](https://entra.microsoft.com/). Registration integrates the app with the Microsoft identity platform and is the first step for the app to enjoy the services of Microsoft Entra ID as an identity provider. A registered app has the following critical configuration information:

- **Application ID**: A unique identifier assigned by the Microsoft identity platform.
- **Redirect URI/URL**: One or more endpoints at which your app receives responses from the Microsoft identity platform. For native and mobile apps, the URI is assigned by the Microsoft identity platform.
- **Client secret**: A password that your app uses to authenticate with the Microsoft identity platform. You can optionally use a certificate or a federated identity credential. This property isn't required for public clients like native, mobile, and single page applications.

For more information, see [Register an application with the Microsoft identity platform](../auth-register-app-v2.md).

## Access scenarios

An app can access data in one of two ways as illustrated in the following image.

- **Delegated access**, an app acting on behalf of a signed-in user.
- **App-only access**, an app acting with its own identity.

:::image type="content" source="../images/access-scenarios.png" alt-text="Illustration of delegated and app-only access scenarios in the Microsoft identity platform.":::

### Delegated access (access on behalf of a user)

In this access scenario, a user signs into a client application and the client application calls Microsoft Graph on behalf of the user. *Both the client and the user must be authorized to make the request*.

Delegated access requires *delegated permissions*, also referred to as *scopes*. Scopes are permissions that are exposed by a given resource and they represent the operations that an app can perform on behalf of a user.

Because both the app and the user must be authorized to make the request, the resource grants the client app the delegated permissions, for the client app to access data on behalf of the specified user. For the user, the actions that they can perform on the resource rely on the permissions that they have to access the resource. For example, the user might be the owner of the resource, or they might be assigned a particular role through a role-based access control system (RBAC) such as [Microsoft Entra RBAC](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

> [!NOTE]
> Endpoints and APIs with the `/me` alias operate on the signed-in user only and are therefore called in delegated access scenarios.

#### Sample scenario: Delegated access in Microsoft Graph

An endpoint such as `https://graph.microsoft.com/v1.0/me` is the access point to the signed-in user's information, which represents a resource that's protected by the Microsoft identity platform. For delegated access, the app must be granted a supported Microsoft Graph delegated permission, for example, the *User.Read* delegated permission, on behalf of the signed-in user. The signed-in user in this scenario is the owner of the data.

### App-only access (access without a user)

In this access scenario, the application can interact with data on its own, without a signed in user. *App-only* access is used in scenarios such as automation and backup, and is mostly used by apps that run as background services or daemons. It's suitable when it's undesirable to have a user signed in, or when the data required can't be scoped to a single user.

Apps get privileges to call Microsoft Graph with their own identity through one of the following ways:

- When the app is assigned *application permissions*, also called *app roles*
- When the app is assigned ownership of the resource that it intends to manage

> [!NOTE]
> An app can also get privileges through permissions granted by a role-based access control system such as [Microsoft Entra RBAC](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

#### Sample scenario: App-only access in Microsoft Graph

The `https://graph.microsoft.com/v1.0/users/delta` endpoint allows you to poll changes to user data. In app-only access, the app must be granted a supported Microsoft Graph application permission, for example, the *User.Read.All* delegated permission. Alternatively, the app can be granted a supported permission through Microsoft Entra RBAC. Then the app is allowed to successfully query and receive changes in user data.

## Microsoft Graph permissions

As mentioned earlier, an app must have permissions to access the data that it wants to access, regardless of the access scenario.

Microsoft Graph exposes granular permissions that control the access to Microsoft Graph resources, like users, groups, and mail. As a developer, you decide which Microsoft Graph permissions to request for your app based on the access scenario and the operations you want to perform.

Microsoft Graph exposes two types of permissions for the supported [access scenarios](#access-scenarios):

- Delegated permissions: Also called *scopes*, allow the application to act on behalf of the signed-in user.
- Application permissions: Also called *app roles*, allow the app to access data on its own, without a signed-in user.

When a user signs in to an app, the app must specify the permissions it needs to be included in the access token. These permissions:

- Might be preauthorized for the application by an administrator.
- Might be consented by the user directly.
- If not preauthorized, might require administrator privileges to grant consent. For example, for permissions with a greater potential security impact.

For more information about permissions and consent, see [Introduction to permissions and consent](/azure/active-directory/develop/permissions-consent-overview#consent).

[!INCLUDE [auth-use-least-privileged](../../includes/auth-use-least-privileged.md)]

For more information about Microsoft Graph permissions and how to use them, see the [Overview of Microsoft Graph permissions](../permissions-overview.md).

## Access tokens

To access a protected resource, an application must prove that it's authorized to do so by submitting a valid access token. The application gets this access token when it makes an authentication request to the Microsoft identity platform which in turn uses the access token to verify that the app is authorized to call Microsoft Graph. 

Access tokens that the Microsoft identity platform issues contain *claims* which are details about the application and in delegated access scenarios, the signed-in user. Web APIs such as Microsoft Graph that are secured by the Microsoft identity platform use the claims to validate the caller and to ensure that the caller is authorized to perform the operation they're requesting. For delegated access scenarios, the permissions of both the calling user and the app are part of the claims. For application scenarios the permissions of the app are part of the claims. For more information about the pieces that constitute access tokens, see [Access token claims reference](/entra/identity-platform/access-token-claims-reference).

To call Microsoft Graph, the app makes an authorization request by attaching the access token as a **Bearer** token to the **Authorization** header in an HTTP request. For example, the following call that returns the profile information of the signed-in user (the access token has been shortened for readability):

```http
GET https://graph.microsoft.com/v1.0/me/ HTTP/1.1
Host: graph.microsoft.com
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
```

To learn more about Microsoft identity platform access tokens, see [ID tokens in the Microsoft identity platform](/entra/identity-platform/id-tokens).

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

## Related content

- [Microsoft identity platform documentation](/azure/active-directory/develop/).
- [Choose a Microsoft Graph authentication provider based on scenario](../sdks/choose-authentication-providers.md).
- [Overview of Microsoft Graph permissions](/graph/permissions-overview).
