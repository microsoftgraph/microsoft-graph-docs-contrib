---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

*offline_access* is an OpenID Connect (OIDC) scope.

You can use the OIDC scopes to specify artifacts that you want returned in Azure AD authorization and token requests. They are supported differently by the Azure AD v1.0 and v2.0 endpoints.

With the Azure AD v1.0 endpoint, only the _openid_ scope is used. You specify it in the *scope* parameter in an authorization request to return an ID token when you use the OpenID Connect protocol to sign in a user to your app. For more information, see [Authorize access to web applications using OpenID Connect and Azure Active Directory](/azure/active-directory/develop/active-directory-protocols-openid-connect-code). To successfully return an ID token, you must also make sure that the _User.Read_ permission is configured when you register your app.

With the Azure AD v2.0 endpoint, you specify the _offline\_access_ scope in the _scope_ parameter to explicitly request a refresh token when using the OAuth 2.0 or OpenID Connect protocols. With OpenID Connect, you specify the _openid_ scope to request an ID token. You can also specify the _email_ scope, _profile_ scope, or both to return additional claims in the ID token. You do not need to specify the _User.Read_ permission to return an ID token with the v2.0 endpoint. For more information, see [OpenID Connect scopes](/azure/active-directory/develop/scopes-oidc#openid-connect-scopes).

The Microsoft Authentication Library (MSAL) currently specifies _offline\_access_, _openid_, _profile_, and _email_ by default in authorization and token requests. This means that, for the default case, if you specify these scopes explicitly, Azure AD may return an error.