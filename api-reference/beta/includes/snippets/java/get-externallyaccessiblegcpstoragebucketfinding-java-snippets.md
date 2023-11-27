---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternallyAccessibleGcpStorageBucketFinding externallyAccessibleGcpStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUdjcFN0b3JhZ2VCdWNrZXRGaW5kaW5nLDI3Nzcy").microsoft.graph.externallyAccessibleGcpStorageBucketFinding()
	.buildRequest()
	.get();

```