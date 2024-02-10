---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
Pkcs12Certificate authenticationConfiguration = new Pkcs12Certificate();
authenticationConfiguration.setOdataType("#microsoft.graph.pkcs12Certificate");
authenticationConfiguration.setPkcs12Value("eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA");
authenticationConfiguration.setPassword("secret");
identityApiConnector.setAuthenticationConfiguration(authenticationConfiguration);
IdentityApiConnector result = graphClient.identity().apiConnectors().byIdentityApiConnectorId("{identityApiConnector-id}").patch(identityApiConnector);


```