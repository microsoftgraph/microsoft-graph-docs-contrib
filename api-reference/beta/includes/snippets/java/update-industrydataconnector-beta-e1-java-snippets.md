---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureDataLakeConnector industryDataConnector = new AzureDataLakeConnector();
industryDataConnector.displayName = "API Monitor 60201009";

graphClient.external().industryData().dataConnectors("51dca0a0-85f6-4478-f526-08daddab2271")
	.buildRequest()
	.patch(industryDataConnector);

```