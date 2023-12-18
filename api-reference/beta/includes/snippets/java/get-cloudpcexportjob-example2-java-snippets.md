---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExportJob cloudPcExportJob = graphClient.deviceManagement().virtualEndpoint().reports().exportJobs("RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330")
	.buildRequest()
	.get();

```