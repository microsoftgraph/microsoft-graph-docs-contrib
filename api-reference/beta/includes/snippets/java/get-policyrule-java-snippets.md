---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyRule policyRule = graphClient.networkaccess().forwardingPolicies("{forwardingPolicyId}").policyRules("{RuleId)")
	.buildRequest()
	.get();

```