---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
identityApiConnector.setDisplayName("Test API");
identityApiConnector.setTargetUrl("https://someapi.com/api");
BasicAuthentication authenticationConfiguration = new BasicAuthentication();
authenticationConfiguration.setOdataType("#microsoft.graph.basicAuthentication");
authenticationConfiguration.setUsername("MyUsername");
authenticationConfiguration.setPassword("MyPassword");
identityApiConnector.setAuthenticationConfiguration(authenticationConfiguration);
IdentityApiConnector result = graphClient.identity().apiConnectors().post(identityApiConnector);


```