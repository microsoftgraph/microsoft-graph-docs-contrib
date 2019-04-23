---
title: "Choose an authentication provider"
description: "Learn how to choose scenario specific authentication providers for your application."
---

# Choose an authentication provider

Authentication providers simplify getting an access token by abstracting the many parameters required by the authentication client libraries. The Microsoft Graph authentication providers typically wrap and simplify the Microsoft Authentication Library (MSAL) for each platform. Authentication providers can be broken down ito two general categories, public and confidential clients:

**Public client providers**

These providers are used by Native client applications (mobile/ desktop applications) that can't securely store an application's secret. Public clients call Microsoft Graph in the name of a user.

**Confidential client providers**

These are typically service, web API, or web applications that may not have a user driving the application. These applications are assumed to be run from devices which are assumed to be secure and so can securely contain secrets. They are broadly classified as:
* Daemons/Services.
* Web clients (Web Apps/ Web APIs).

You'll need to determine the type of provider you'll use for your scenario once you've determined whether the client will be a public or confidential client. We've included a breakdown of available authentication providers for each platform.

<!-- Once this authentication provider story is more complete, we should add an image of which provider should be chosen for which scenario -->

## .Net authentication providers

You can use the .Net authentication providers with the [Microsoft Graph .Net SDK](https://github.com/microsoftgraph/msgraph-sdk-dotnet) by including the [Microsoft.Graph.Auth](https://www.nuget.org/packages/Microsoft.Graph.Auth) NuGet package in your solution. **Microsoft.Graph.Auth** provides all of the main OAuth flows supported by MSAL. [Read the code](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth) for more information about the .Net authentication providers.

### Authorization code provider ([confidential](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/ConfidentialClient))

Authorization code provider is used by Web Apps (ASP.NET & ASP.NET Core) to acquire Microsoft Graph access token in the name of a user. It uses the [MSAL Authorization Code Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-with-authorization-codes-on-web-apps) to authenticate Microsoft Graph requests.

```csharp
IConfidentialClientApplication clientApplication = AuthorizationCodeProvider.CreateClientApplication(clientId, redirectUri, clientCredential);
AuthorizationCodeProvider authenticationProvider = new AuthorizationCodeProvider(clientApplication, scopes);
```

### Client credential provider ([confidential](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/ConfidentialClient))

Client credential provider is used by services and desktop applications to acquire Microsoft Graph access tokens without a user. The app should have previously registered a secret (app password or certificate) with Azure AD during the application registration. This provider leverages the [MSAL Client Credential Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Client-credential-flows) to authenticate Microsoft Graph requests.

```csharp
IConfidentialClientApplication clientApplication = ClientCredentialProvider.CreateClientApplication(clientId, clientCredential);
ClientCredentialProvider authenticationProvider = new ClientCredentialProvider(clientApplication);
```

### On behalf of provider ([confidential](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/ConfidentialClient))

On behalf of provider is used by services or daemons to acquire Microsoft Graph access tokens on behalf of a user by passing a **UserAssertion**. This provider uses the [MSAL On Behalf Of Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/on-behalf-of) to authenticate Microsoft Graph requests.

```csharp
IConfidentialClientApplication clientApplication = OnBehalfOfProvider.CreateClientApplication(clientId, redirectUri, clientCredential);
OnBehalfOfProvider authenticationProvider = new OnBehalfOfProvider(clientApplication, scopes);
```

### Device code provider ([public](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/PublicClient))

Device code provider is used by desktop apps that run on devices without browsers to call Microsoft Graph in the name of a user. This provider leverages the [MSAL Device Code Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Device-Code-Flow) to authenticate Microsoft Graph requests.

```csharp
IPublicClientApplication clientApplication = DeviceCodeProvider.CreateClientApplication(clientId);
DeviceCodeProvider authenticationProvider = new DeviceCodeProvider(clientApplication, scopes);
```

### Integrated windows authentication provider ([public](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/PublicClient))

This provider is used by Windows hosted .NET applications running on computers joined to Azure AD to acquire tokens silently. This provider leverages the [MSAL Integrated Windows Authentication Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Integrated-Windows-Authentication) to authenticate Microsoft Graph requests.

```csharp
IPublicClientApplication clientApplication = IntegratedWindowsAuthenticationProvider.CreateClientApplication(clientId);
IntegratedWindowsAuthenticationProvider authenticationProvider = new IntegratedWindowsAuthenticationProvider(clientApplication, scopes);
```

### Interactive authentication provider ([public](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/PublicClient))

Interactive authentication provider is used by mobile applications (Xamarin and UWP) and desktops applications to call Microsoft Graph in the name of a user. Refer to the [MSAL Interactive Authentication Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-interactively) on how to configure the provider for your platform of choice since each platform has its own specificities.

```csharp
IPublicClientApplication clientApplication = InteractiveAuthenticationProvider.CreateClientApplication(clientId);
InteractiveAuthenticationProvider authenticationProvider = new InteractiveAuthenticationProvider(clientApplication, scopes);
```

### Username password provider ([public](https://github.com/microsoftgraph/msgraph-sdk-dotnet-auth/tree/dev/src/Microsoft.Graph.Auth/PublicClient))

This provider is used by desktop applications to acquire Microsoft Graph access token by using the [MSAL Username Password Flow](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Username-Password-Authentication) with the provider username (email) and password. This flow is discouraged and should only be used if all other OAuth flows cannot be used.

```csharp
IPublicClientApplication clientApplication = UsernamePasswordProvider.CreateClientApplication(clientId);
UsernamePasswordProvider authenticationProvider = new UsernamePasswordProvider(clientApplication, scopes);
```

## Java authentication providers

You can use the Java authentication providers with the [Microsoft Graph Java SDK](https://github.com/microsoftgraph/msgraph-sdk-java) by including the [microsoft-graph-auth](https://github.com/microsoftgraph/msgraph-sdk-java-auth) dependency in your solution. [Read the code](https://github.com/microsoftgraph/msgraph-sdk-java-auth) for more information about the Java authentication providers.

### Authorization code provider ([confidential](https://github.com/microsoftgraph/msgraph-sdk-java-auth/tree/dev/src/main/java/com/microsoft/graph/auth/confidentialClient))

Authorization code provider is used by Web Apps that acquire Microsoft Graph access tokens in the name of a user.

```java
AuthorizationCodeProvider authProvider = new AuthorizationCodeProvider(
                                                    clientId,
                                                    scopes,
                                                    authorizationCode,
                                                    redirectUri,
                                                    clientSecret);
```

### Client credential provider ([confidential](https://github.com/microsoftgraph/msgraph-sdk-java-auth/tree/dev/src/main/java/com/microsoft/graph/auth/confidentialClient))

Client credential provider is used by services and desktop applications to acquire Microsoft Graph access token without a user. The app should have previously registered a secret (app password or certificate) with Azure AD during the application registration.

```java
ClientCredentialProvider authProvider = new ClientCredentialProvider(
                                                    clientId,
                                                    scopes,
                                                    clientSecret,
                                                    tenant,
                                                    endpoint);
```

### Username password provider ([public](https://github.com/microsoftgraph/msgraph-sdk-java-auth/tree/dev/src/main/java/com/microsoft/graph/auth/publicClient))

This provider is used by desktop applications to acquire Microsoft Graph access token by using a user name and password. This flow is discouraged and should only be used if all other OAuth flows cannot be used.

```java
UsernamePasswordProvider authProvider = new UsernamePasswordProvider(
                                                    clientId,
                                                    scopes,
                                                    username,
                                                    password);
```


## Android authentication providers

You can use the Android MSAL authentication provider with the [Microsoft Graph Java SDK](https://github.com/microsoftgraph/msgraph-sdk-java) by including the [microsoft-graph-android-auth](https://github.com/microsoftgraph/msgraph-sdk-android-auth) dependency in your solution. [Read the code](https://github.com/microsoftgraph/msgraph-sdk-android-auth) for more information about the Android authentication provider.

### Interactive authentication provider ([public](https://github.com/microsoftgraph/msgraph-sdk-android-auth/blob/dev/msgraph-sdk-android-auth/src/main/java/com/microsoft/graph/authentication/MSALAuthenticationProvider.java))

```java
PublicClientApplication publicClientApplication = new PublicClientApplication(getApplicationContext(), "CLIENT_ID_OF_YOUR_APPLICATION");
MSALAuthenticationProvider msalAuthenticationProvider = new MSALAuthenticationProvider(
    getActivity(),
    getApplication(),
    publicClientApplication,
    scopes);

IGraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(msalAuthenticationProvider)
    .buildClient();
```

## Objective-C authentication providers

You can use the Objective-C MSAL authentication provider with the [Microsoft Graph Objective-C SDK](https://github.com/microsoftgraph/msgraph-sdk-objc) by including the [MSGraphMSALAuthProvider](https://github.com/microsoftgraph/msgraph-sdk-objc-auth) dependency in your XCode project. [Read the code](https://github.com/microsoftgraph/msgraph-sdk-objc-auth) for more information about the Objective-C authentication provider.

### Interactive authentication provider ([public](https://github.com/microsoftgraph/msgraph-sdk-objc-auth/blob/master/MSGraphMSALAuthProvider/MSGraphMSALAuthProvider/MSALAuthenticationProvider.m))

```objc
NSError *error = nil;
MSALPublicClientApplication *application =
[[MSALPublicClientApplication alloc] initWithClientId:@"<your-client-id-here>"
error:&error];

MSALAuthenticationProvider *authenticationProvider = [[MSALAuthenticationProvider alloc] initWithPublicClientApplication:application
                                                                                                               andScopes:<array-of-scopes-for-which-you-need-access-token>];
```

## Javascript authentication providers

You can use the Javascript MSAL authentication provider included with the [Microsoft Graph Javascript SDK](https://github.com/microsoftgraph/msgraph-sdk-javascript) to authenticate users of a single page web application. [Read the code](https://github.com/microsoftgraph/msgraph-sdk-javascript) for more information about the Javascript MSAL authentication provider.

### Confidential client providers
Authorization code, client credential, and On-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

### Implicit Auth Flow provider ([public](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/src/MSALAuthenticationProvider.ts))

```javascript
const clientId = "your_client_id"; // Client Id of the registered application
const callback = (errorDesc, token, error, tokenType) => {};
// An Optional options for initializing the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#configuration-options
const options = {
	redirectUri: "Your redirect URI",
};
const graphScopes = ["user.read", "mail.send"]; // An array of graph scopes

// Initialize the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#initialization-of-msal
const userAgentApplication = new Msal.UserAgentApplication(clientId, undefined, callback, options);
const authProvider = new MicrosoftGraph.MSALAuthenticationProvider(userAgentApplication, graphScopes);

const options = {
	authProvider, // An instance created from previous step
};
const Client = MicrosoftGraph.Client;
const client = Client.initWithMiddleware(options);
```

## PHP authentication providers

Not available, yet. Please open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

## Ruby authentication providers

Not available, yet. Please open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

## Next steps

<!-- Need link to instructions on how to register an app. -->

* Authentication providers require an client id. You'll want to [register your application](https://portal.azure.com/) once you've setup your authentication provider.
* Let us know if a required OAuth flow isn't currently supported by upvoting or opening a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).