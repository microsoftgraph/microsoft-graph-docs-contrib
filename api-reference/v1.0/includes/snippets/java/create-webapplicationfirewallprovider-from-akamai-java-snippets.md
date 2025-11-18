---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AkamaiWebApplicationFirewallProvider webApplicationFirewallProvider = new AkamaiWebApplicationFirewallProvider();
webApplicationFirewallProvider.setOdataType("#microsoft.graph.akamaiWebApplicationFirewallProvider");
webApplicationFirewallProvider.setDisplayName("Akamai Provider Example");
webApplicationFirewallProvider.setHostPrefix("akab-exampleprefix");
webApplicationFirewallProvider.setClientSecret("akamai_example_secret_123");
webApplicationFirewallProvider.setClientToken("akamai_example_token_456");
webApplicationFirewallProvider.setAccessToken("akamai_example_token_789");
WebApplicationFirewallProvider result = graphClient.identity().riskPrevention().webApplicationFirewallProviders().post(webApplicationFirewallProvider);


```