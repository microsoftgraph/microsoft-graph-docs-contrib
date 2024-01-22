---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.networkaccess().filteringPolicies("bb1d249e-0691-477c-aae4-adfca179746a").policyRules("67f2edf8-1dc0-4a4f-87ea-9117541646de")
	.buildRequest()
	.delete();

```