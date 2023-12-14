---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebCategoryFilteringRule policyRule = new WebCategoryFilteringRule();
policyRule.name = "Gambling and Storage cateogries";
LinkedList<RuleDestination> destinationsList = new LinkedList<RuleDestination>();
WebCategory destinations = new WebCategory();
destinations.name = "Gambling";
destinationsList.add(destinations);
WebCategory destinations1 = new WebCategory();
destinations1.name = "WebRepositoryAndStorage";
destinationsList.add(destinations1);
policyRule.destinations = destinationsList;

graphClient.networkaccess().filteringPolicies("bb1d249e-0691-477c-aae4-adfca179746a").policyRules("4619a550-7466-41ac-bdd9-b118bb6e004a")
	.buildRequest()
	.patch(policyRule);

```