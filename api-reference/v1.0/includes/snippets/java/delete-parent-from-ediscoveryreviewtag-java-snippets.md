---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").tags("d05c2ef9369d49c293b5a6a6d18a5fd9")
	.buildRequest()
	.delete();

```