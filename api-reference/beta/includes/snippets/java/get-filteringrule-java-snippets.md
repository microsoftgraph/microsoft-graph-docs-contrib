---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyRule policyRule = graphClient.networkaccess().filteringPolicies("ac253559-37a0-4f72-b666-103420b94e38").policyRules("0823cb1e-644b-4585-80db-1c1055894ec7")
	.buildRequest()
	.get();

```