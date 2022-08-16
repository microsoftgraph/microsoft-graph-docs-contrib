---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OperationalInsightsConnection resourceConnection = new OperationalInsightsConnection();
resourceConnection.azureSubscriptionId = "322ec614-e9c2-4cd5-a55c-5711fdecf02e";
resourceConnection.azureResourceGroupName = "target-resource-group";
resourceConnection.workspaceName = "my-workspace";

graphClient.admin().windows().updates().resourceConnections()
	.buildRequest()
	.post(resourceConnection);

```