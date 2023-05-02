---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureDataLakeConnector industryDataConnector = new AzureDataLakeConnector();
industryDataConnector.displayName = "CSV connector";
industryDataConnector.additionalDataManager().put("sourceSystem@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')"));

graphClient.external().industryData().dataConnectors()
	.buildRequest()
	.post(industryDataConnector);

```