---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantMigrationJob crossTenantMigrationJob = new CrossTenantMigrationJob();
crossTenantMigrationJob.setDisplayName("xtmigration_user_req_1");
OffsetDateTime completeAfterDateTime = OffsetDateTime.parse("2024-12-09T22:48:03.092Z");
crossTenantMigrationJob.setCompleteAfterDateTime(completeAfterDateTime);
crossTenantMigrationJob.setSourceTenantId("12345678-1234-1234-1234-123456789012");
ExchangeOnlineCrossTenantMigrationSettings exchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings();
exchangeSettings.setTargetDeliveryDomain("xtmigration.onmicrosoft.com");
exchangeSettings.setSourceEndpoint("sampleEndpointText");
crossTenantMigrationJob.setExchangeSettings(exchangeSettings);
LinkedList<String> resources = new LinkedList<String>();
resources.add("4dd550d9-9ea2-4e71-a16b-60b1d1c4f506");
resources.add("63f15b55-f61a-49cb-a599-2e3d233afb2c");
resources.add("41d94bac-3a53-47d6-a89e-583830104e15");
crossTenantMigrationJob.setResources(resources);
crossTenantMigrationJob.setResourceType("Users");
LinkedList<String> workloads = new LinkedList<String>();
workloads.add("Teams");
workloads.add("Exchange");
workloads.add("ODSP");
crossTenantMigrationJob.setWorkloads(workloads);
CrossTenantMigrationJob result = graphClient.solutions().migrations().crossTenantMigrationJobs().post(crossTenantMigrationJob);


```