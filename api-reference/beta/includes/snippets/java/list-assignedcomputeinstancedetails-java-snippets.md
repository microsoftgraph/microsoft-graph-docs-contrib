---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AssignedComputeInstanceDetailsCollectionWithReferencesPage assignedComputeInstancesDetails = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsNzE3MTg1").microsoft.graph.openAwsSecurityGroupFinding().assignedComputeInstancesDetails()
	.buildRequest()
	.get();

```