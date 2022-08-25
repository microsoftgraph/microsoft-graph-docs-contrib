---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InformationProtectionPolicySetting informationProtectionPolicySetting = graphClient.users("bob@contoso.com").security().informationProtection().labelPolicySettings()
	.buildRequest()
	.get();

```