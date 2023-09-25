---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FileUploadSession fileUploadSession = graphClient.external().industryData().dataConnectors("51dca0a0-85f6-4478-f526-08daddab2271").microsoft.graph.industryData.azureDataLakeConnector()
	.getUploadSession()
	.buildRequest()
	.get();

```