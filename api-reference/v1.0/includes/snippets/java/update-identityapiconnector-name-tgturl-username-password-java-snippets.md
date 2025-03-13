---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
identityApiConnector.setDisplayName("New Test API");
identityApiConnector.setTargetUrl("https://otherapi.com/api/endpoint");
BasicAuthentication authenticationConfiguration = new BasicAuthentication();
authenticationConfiguration.setOdataType("microsoft.graph.basicAuthentication");
authenticationConfiguration.setUsername("<NEW_USERNAME>");
authenticationConfiguration.setPassword("<NEW_PASSWORD>");
identityApiConnector.setAuthenticationConfiguration(authenticationConfiguration);
IdentityApiConnector result = graphClient.identity().apiConnectors().byIdentityApiConnectorId("{identityApiConnector-id}").patch(identityApiConnector);


```