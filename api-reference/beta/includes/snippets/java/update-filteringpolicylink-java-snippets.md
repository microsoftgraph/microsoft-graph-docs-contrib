---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringPolicyLink policyLink = new FilteringPolicyLink();
policyLink.state = Status.DISABLED;

graphClient.networkaccess().filteringProfiles("9020f79d-71f6-4650-83a9-6b532479578f").policies("d00cf227-8645-4ab8-bd99-a9b455fd83a3")
	.buildRequest()
	.patch(policyLink);

```