---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperGcpServiceAccountFinding superGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxTdXBlckdjcFNlcnZpY2VBY2NvdW50RmluZGluZyw3MDc4").microsoft.graph.superGcpServiceAccountFinding()
	.buildRequest()
	.get();

```