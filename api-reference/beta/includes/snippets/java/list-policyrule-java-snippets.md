---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyRuleCollectionPage policyRules = graphClient.networkaccess().forwardingPolicies("{forwardingPolicyId}").policyRules()
	.buildRequest()
	.get();

```