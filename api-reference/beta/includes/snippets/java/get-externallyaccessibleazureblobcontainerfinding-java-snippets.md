---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternallyAccessibleAzureBlobContainerFinding externallyAccessibleAzureBlobContainerFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUF6dXJlQmxvYkNvbnRhaW5lckZpbmRpbmcsNzIzNg").microsoft.graph.externallyAccessibleAzureBlobContainerFinding()
	.buildRequest()
	.get();

```