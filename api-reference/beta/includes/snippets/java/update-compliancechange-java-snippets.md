---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ComplianceChange complianceChange = new ComplianceChange();
complianceChange.isRevoked = true;

graphClient.admin().windows().updates().updatePolicies("983f03cd-03cd-983f-cd03-3f98cd033f98").complianceChanges("fcb57826-daaa-c8ac-bf9d-137b74a90a14")
	.buildRequest()
	.patch(complianceChange);

```