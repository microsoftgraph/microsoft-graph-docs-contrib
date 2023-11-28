---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AssignedComputeInstanceDetails assignedComputeInstanceDetails = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsNzE3MTg1").microsoft.graph.openAwsSecurityGroupFinding().assignedComputeInstancesDetails("YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTBkNWY1OTU5OGVkZjQzNDBl")
	.buildRequest()
	.get();

```