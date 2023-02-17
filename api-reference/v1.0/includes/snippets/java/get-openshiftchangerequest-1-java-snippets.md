---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenShiftChangeRequest openShiftChangeRequest = graphClient.teams("3d88b7a2-f988-4f4b-bb34-d66df66af126").schedule().openShiftChangeRequests("SREQ_0b87dd20-d5ed-4764-9c3e-cfc8516def09")
	.buildRequest()
	.get();

```