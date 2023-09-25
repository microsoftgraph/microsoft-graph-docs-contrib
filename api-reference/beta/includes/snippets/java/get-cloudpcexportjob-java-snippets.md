---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExportJob cloudPcExportJob = graphClient.deviceManagement().virtualEndpoint().reports().exportJobs("TotalAggregatedRemoteConnectionReports__d39979c9-a0a2-4916-a158-1b984742ffff")
	.buildRequest()
	.get();

```