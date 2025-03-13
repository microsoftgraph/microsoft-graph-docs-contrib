---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

*openid* is an OpenID Connect (OIDC) scope.

You can use the OIDC scopes to specify artifacts that you want returned in Microsoft identity platform authorization and token requests. The Microsoft identity platform v1.0 and v2.0 endpoints support OIDC scopes differently.

With the Microsoft identity platform v1.0 endpoint, only the *openid* scope is used. You specify it in the *scope* parameter in an authorization request to return an ID token when you use the OpenID Connect protocol to sign in a user to your app. For more information, see [Microsoft identity platform and OAuth 2.0 authorization code flow](/entra/identity-platform/v2-oauth2-auth-code-flow). To successfully return an ID token, you must also make sure that the *User.Read* permission is configured when you register your app.

With the Microsoft identity platform v2.0 endpoint, you specify the *offline_access* scope in the **scope** parameter to explicitly request a refresh token when using the OAuth 2.0 or OpenID Connect protocols. With OpenID Connect, you specify the *openid* scope to request an ID token. You can also specify the *email* scope, *profile* scope, or both to return additional claims in the ID token. You don't need to specify the *User.Read* permission to return an ID token with the v2.0 endpoint. For more information, see [OpenID Connect scopes](/entra/identity-platform/scopes-oidc#openid-connect-scopes).

The Microsoft Authentication Library (MSAL) currently specifies *offline_access*, *openid*, *profile*, and *email* by default in authorization and token requests. Therefore, for the default case, if you specify these scopes explicitly, the Microsoft identity platform might return an error.