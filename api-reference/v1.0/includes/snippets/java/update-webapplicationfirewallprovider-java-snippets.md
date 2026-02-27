---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudFlareWebApplicationFirewallProvider webApplicationFirewallProvider = new CloudFlareWebApplicationFirewallProvider();
webApplicationFirewallProvider.setOdataType("#microsoft.graph.cloudFlareWebApplicationFirewallProvider");
webApplicationFirewallProvider.setDisplayName("String");
WebApplicationFirewallProvider result = graphClient.identity().riskPrevention().webApplicationFirewallProviders().byWebApplicationFirewallProviderId("{webApplicationFirewallProvider-id}").patch(webApplicationFirewallProvider);


```