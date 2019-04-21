---
title: "Create Graph Client"
description: "Explanation of how to create a Graph client to use to make calls to the Microsoft Graph.  Includes how to setup authentication and select a sovereign cloud."
---

# Create Graph Client

In order to make calls to the Microsoft Graph, you will first need an instance of the Graph client. The Graph client is designed to be used to make multiple calls to the Graph and a single instance can be used for the lifetime of the application.

Before you can instantiate the the Graph client it is necessary to add the required packages to your projects.  Details on this process can be found in [SDK Installation](sdk-installation.md) section.

The following code snippets demonstrate how to create an instance of a Graph client in the supported languages. An authentication provider is required as constructor parameter of the Graph Client. There are a range of different Authentication Providers available on each language and platform.  Refer to [Choose an Authentication Provider](choose-authentication-providers.md) for more details.

#### Create a client
# [C#](#tab/CS)

```csharp
var app = DeviceCodeProvider.CreateClientApplication("CLIENT-APP-GUID");
var authProvider = new DeviceCodeProvider(app);
var = client = new GraphServiceClient(authProvider);
```

# [Javascript](#tab/Javascript)

```javascript
const clientId = "your_client_id"; // Client Id of the registered application
const callback = (errorDesc, token, error, tokenType) => {};
// An Optional options for initializing the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#configuration-options
const options = {
	redirectUri: "Your redirect URI",
};
const graphScopes = ["user.read", "mail.send"]; // An array of graph scopes

// Initialize the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#initialization-of-msal
const userAgentApplication = new UserAgentApplication(clientId, undefined, callback, options);
const authProvider = new MSALAuthenticationProvider(userAgentApplication, scopes);
```

# [Java](#tab/Java)

```java
ClientCredentialProvider authProvider = new ClientCredentialProvider(CLIENT_ID, SCOPES, CLIENT_SECRET, TENANT_GUID, NATIONAL_CLOUD);

IGraphServiceClient graphClient = GraphServiceClient
				.builder()
				.authenticationProvider(authProvider)
				.buildClient();
```

# [Android](#tab/Android)

```java
PublicClientApplication publicClientApplication = new PublicClientApplication(getApplicationContext(), "CLIENT_ID_OF_YOUR_APPLICATION");

MSALAuthenticationProvider msalAuthenticationProvider = new MSALAuthenticationProvider(
    getActivity(),
    getApplication(),
    publicClientApplication,
    scopes);

IGraphServiceClient graphClient = GraphServiceClient
				.builder()
				.authenticationProvider(authProvider)
				.buildClient();
```
---

There are a number of other parameters that can be provided during the initialization that are described in more detail in the section [Advanced Client Scenarios](advanced-client-scenarios.md).