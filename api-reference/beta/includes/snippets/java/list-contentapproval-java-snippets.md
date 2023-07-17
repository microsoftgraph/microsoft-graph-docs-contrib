---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentApprovalCollectionPage contentApproval = graphClient.admin().windows().updates().updatePolicies("a7aa99c1-34a2-850c-5223-7816fde70713").complianceChanges().microsoft.graph.windowsUpdates.contentApproval()
	.buildRequest()
	.get();

```