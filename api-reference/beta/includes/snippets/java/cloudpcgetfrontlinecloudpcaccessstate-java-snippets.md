---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FrontlineCloudPcAccessState frontlineCloudPcAccessState = graphClient.me().cloudPCs("b0a9cde2-e170-4dd9-97c3-ad1d3328a711")
	.getFrontlineCloudPcAccessState()
	.buildRequest()
	.get();

```