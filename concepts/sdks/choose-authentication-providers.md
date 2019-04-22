---
title: "Choosing an authentication provider"
description: "Learn how to choose scenario specific authentication providers for your application."
---

# Choose an authentication provider

- public versus confidential clients
- considerations for choosing clients
- ideally we have a graphic here to help someone choose.
- platform descriptions for each provider.

- Links to authentication provider libraries per platform.
https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth - public and confidential (all)
https://github.com/microsoftgraph/msgraph-sdk-java-auth - public (user+password) and confidential (authCode, clientCred)
https://github.com/microsoftgraph/msgraph-sdk-android-auth - only public
https://github.com/microsoftgraph/msgraph-sdk-objc-auth - only public


For Javascript public client application. Need to determine which scenarios this supports.
https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/src/MSALAuthenticationProvider.ts

For Javascript confidential client application, instructions are to implement our own.
https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md

PHP, N/A.

## .Net authentication providers
https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth

### Confidential client providers
#### Authorization code provider
#### Client credential provider
#### On behalf of provider

### Public client providers
#### Device code provider
#### Integrated windows authentication provider
#### Interactive authentication provider
#### Username password provider

## Java authentication providers
https://github.com/microsoftgraph/msgraph-sdk-java-auth/tree/dev/src/main/java/com/microsoft/graph/auth/confidentialClient

### Confidential client providers
#### Authorization code provider
#### Client credential provider

### Public client providers
#### Username password provider

## Android authentication providers

<!-- Determine which flows we support. I think only interactive. -->
https://github.com/microsoftgraph/msgraph-sdk-android-auth/blob/dev/msgraph-sdk-android-auth/src/main/java/com/microsoft/graph/authentication/MSALAuthenticationProvider.java

### Public client providers
#### Device code provider?
#### Integrated windows authentication provider?
#### Interactive authentication provider?
#### Username password provider?

## Objective-C authentication providers

Requires a publicClientApplication. Need to determine which flows are supported.
https://github.com/microsoftgraph/msgraph-sdk-objc-auth/blob/master/MSGraphMSALAuthProvider/MSGraphMSALAuthProvider/MSALAuthenticationProvider.m

### Public client providers
#### Device code provider?
#### Integrated windows authentication provider?
#### Interactive authentication provider?
#### Username password provider?

## Javascript authentication providers

### Confidential client providers
Authorization code, client credential, and On-behalf-of OAuth flows require the you implement it yourself.

### Public client providers
#### Device code provider?
#### Integrated windows authentication provider?
#### Interactive authentication provider?
#### Username password provider?

## PHP authentication providers

Not available. Please open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

## Ruby authentication providers

Not available. Please open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.