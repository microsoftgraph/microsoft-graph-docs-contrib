---
title: "Create Graph Client"
description: "Explanation of how to create a Graph client to use to make calls to the Microsoft Graph.  Includes how to setup authentication and select a sovereign cloud."
---

# Create Graph Client

You'll need an instance of the Microsoft Graph client to make calls to the Microsoft Graph. The Microsoft Graph client is designed to make multiple calls to Microsoft Graph. A single client instance can be used for the lifetime of the application. Read instructions on how to add and install the Microsoft Graph client package in your project to get access to the Microsoft Graph client are found in the in [SDK Installation](sdk-installation.md) topic.

The following code snippets demonstrate how to create an instance of a Microsoft Graph client with an authentication provider in the supported languages. The authentication provider will handle acquiring access tokens for the application. There are many different authentication providers for each language and platform. The different application providers support different client scenarios so read [Choose an Authentication Provider](choose-authentication-providers.md) for more details about which provider and options are appropriate for your scenario.

#### Create a client
# [C#](#tab/CS)

```csharp
var app = DeviceCodeProvider.CreateClientApplication("INSERT-CLIENT-APP-ID");
var authProvider = new DeviceCodeProvider(app);
var = client = new GraphServiceClient(authProvider);
```

# [Javascript](#tab/Javascript)

```javascript
const clientId = "INSERT-CLIENT-APP-ID"; // Client Id of the registered application
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
PublicClientApplication publicClientApplication = new PublicClientApplication(getApplicationContext(), "INSERT-CLIENT-APP-ID");

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

# [Objective-C](#tab/Objective-C)

```objc
// Create the authenticationProvider.
NSError *error = nil;
MSALPublicClientApplication *application = [[MSALPublicClientApplication alloc] initWithClientId:@"INSERT-CLIENT-APP-ID" error:&error];
MSALAuthenticationProvider *authenticationProvider = [[MSALAuthenticationProvider alloc] initWithPublicClientApplication:application andScopes:<array-of-scopes-for-which-you-need-access-token>];

// Create the client with the authenticationProvider and create a request to the /me resource.
MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me"]]];

// Create the task to send the request and handle the response.
MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest
	completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

	//Do something

	}];

[meDataTask execute];
```

# [PHP](#tab/PHP)

```php
// PHP client currently doesn't have an authentication provider. You will need to handle
// getting an access token. The following example demonstrates the client credential
// OAuth flow and assumes that an administrator has consented to the application.
$guzzle = new \GuzzleHttp\Client();
$url = 'https://login.microsoftonline.com/' . $tenantId . '/oauth2/token?api-version=1.0';
$token = json_decode($guzzle->post($url, [
    'form_params' => [
        'client_id' => $clientId,
        'client_secret' => $clientSecret,
        'resource' => 'https://graph.microsoft.com/',
        'grant_type' => 'client_credentials',
    ],
])->getBody()->getContents());
$accessToken = $token->access_token;

// Create a new Graph client.
$graph = new Graph();
$graph->setAccessToken($accessToken);

// Make a call to /me Graph resource.
$user = $graph->createRequest("GET", "/me")
				->setReturnType(Model\User::class)
				->execute();
```
---
