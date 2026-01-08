---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.riskprevention.webapplicationfirewallproviders.item.verify.VerifyPostRequestBody verifyPostRequestBody = new com.microsoft.graph.beta.identity.riskprevention.webapplicationfirewallproviders.item.verify.VerifyPostRequestBody();
verifyPostRequestBody.setHostName("www.contoso.com");
var result = graphClient.identity().riskPrevention().webApplicationFirewallProviders().byWebApplicationFirewallProviderId("{webApplicationFirewallProvider-id}").verify().post(verifyPostRequestBody);


```