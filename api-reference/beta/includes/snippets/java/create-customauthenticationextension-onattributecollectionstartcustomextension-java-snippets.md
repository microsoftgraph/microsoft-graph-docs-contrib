---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionStartCustomExtension customAuthenticationExtension = new OnAttributeCollectionStartCustomExtension();
customAuthenticationExtension.displayName = "attributeCollectionStartName";
customAuthenticationExtension.description = "example description";
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.resourceId = "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e";
customAuthenticationExtension.authenticationConfiguration = authenticationConfiguration;
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.targetUrl = "https://contoso.com";
customAuthenticationExtension.endpointConfiguration = endpointConfiguration;
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.timeoutInMilliseconds = 2000;
clientConfiguration.maximumRetries = 1;
customAuthenticationExtension.clientConfiguration = clientConfiguration;

graphClient.identity().customAuthenticationExtensions()
	.buildRequest()
	.post(customAuthenticationExtension);

```