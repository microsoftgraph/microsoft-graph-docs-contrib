---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSnapshot cloudPcSnapshot = graphClient.deviceManagement().virtualEndpoint().snapshots("A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8")
	.buildRequest()
	.get();

```