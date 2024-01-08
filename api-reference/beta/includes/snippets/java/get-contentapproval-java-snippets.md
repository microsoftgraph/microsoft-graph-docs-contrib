---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ComplianceChange complianceChange = graphClient.admin().windows().updates().updatePolicies("983f03cd-03cd-983f-cd03-3f98cd033f98").complianceChanges("bba2a340-1e32-b5ed-186e-678e16033319")
	.buildRequest()
	.get();

```