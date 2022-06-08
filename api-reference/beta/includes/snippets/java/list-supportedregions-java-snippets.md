---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSupportedRegionCollectionPage supportedRegions = graphClient.deviceManagement().virtualEndpoint().supportedRegions()
	.buildRequest()
	.get();

```