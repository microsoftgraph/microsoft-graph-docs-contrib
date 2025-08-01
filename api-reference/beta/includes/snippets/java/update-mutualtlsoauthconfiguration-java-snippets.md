---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MutualTlsOauthConfiguration mutualTlsOauthConfiguration = new MutualTlsOauthConfiguration();
mutualTlsOauthConfiguration.setDisplayName("THIS_IS_A_NEW_NAME");
MutualTlsOauthConfiguration result = graphClient.directory().certificateAuthorities().mutualTlsOauthConfigurations().byMutualTlsOauthConfigurationId("{mutualTlsOauthConfiguration-id}").patch(mutualTlsOauthConfiguration);


```