---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudFlareWebApplicationFirewallProvider webApplicationFirewallProvider = new CloudFlareWebApplicationFirewallProvider();
webApplicationFirewallProvider.setOdataType("#microsoft.graph.cloudFlareWebApplicationFirewallProvider");
webApplicationFirewallProvider.setDisplayName("Cloudflare Provider Example");
webApplicationFirewallProvider.setZoneId("11111111111111111111111111111111");
webApplicationFirewallProvider.setApiToken("cf_example_token_123");
WebApplicationFirewallProvider result = graphClient.identity().riskPrevention().webApplicationFirewallProviders().post(webApplicationFirewallProvider);


```