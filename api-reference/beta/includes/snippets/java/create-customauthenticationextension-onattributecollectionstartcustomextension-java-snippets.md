---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnAttributeCollectionStartCustomExtension customAuthenticationExtension = new OnAttributeCollectionStartCustomExtension();
customAuthenticationExtension.setOdataType("#microsoft.graph.onAttributeCollectionStartCustomExtension");
customAuthenticationExtension.setDisplayName("attributeCollectionStartName");
customAuthenticationExtension.setDescription("example description");
AzureAdTokenAuthentication authenticationConfiguration = new AzureAdTokenAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.azureAdTokenAuthentication");
authenticationConfiguration.setResourceId("api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e");
customAuthenticationExtension.setAuthenticationConfiguration(authenticationConfiguration);
HttpRequestEndpoint endpointConfiguration = new HttpRequestEndpoint();
endpointConfiguration.setOdataType("#microsoft.graph.httpRequestEndpoint");
endpointConfiguration.setTargetUrl("https://contoso.com");
customAuthenticationExtension.setEndpointConfiguration(endpointConfiguration);
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setTimeoutInMilliseconds(2000);
clientConfiguration.setMaximumRetries(1);
customAuthenticationExtension.setClientConfiguration(clientConfiguration);
CustomAuthenticationExtension result = graphClient.identity().customAuthenticationExtensions().post(customAuthenticationExtension);


```