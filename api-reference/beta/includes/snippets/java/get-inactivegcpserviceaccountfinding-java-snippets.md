---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveGcpServiceAccountFinding inactiveGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxJbmFjdGl2ZUdjcFNlcnZpY2VBY2NvdW50RmluZGluZywxNDM1NjM").microsoft.graph.inactiveGcpServiceAccountFinding()
	.buildRequest()
	.get();

```