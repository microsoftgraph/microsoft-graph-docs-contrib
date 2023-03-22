---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().windows().updates().updatePolicies("983f03cd-03cd-983f-cd03-3f98cd033f98").complianceChanges("7433af82-ce06-4ac6-a30f-d3420f4564f5")
	.buildRequest()
	.delete();

```