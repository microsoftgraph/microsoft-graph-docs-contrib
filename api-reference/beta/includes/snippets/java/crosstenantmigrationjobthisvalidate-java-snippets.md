---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.migrations.crosstenantmigrationjobs.validate.ValidatePostRequestBody validatePostRequestBody = new com.microsoft.graph.beta.solutions.migrations.crosstenantmigrationjobs.validate.ValidatePostRequestBody();
validatePostRequestBody.setDisplayName("Contoso_migration_validation_job");
validatePostRequestBody.setCompleteAfterDateTime("2025-05-22T17:14:52Z");
validatePostRequestBody.setSourceTenantId("12345678-1234-1234-1234-123456789012");
ExchangeOnlineCrossTenantMigrationSettings exchangeSettings = new ExchangeOnlineCrossTenantMigrationSettings();
exchangeSettings.setTargetDeliveryDomain("fabrikam.com");
exchangeSettings.setSourceEndpoint("EXOHandler");
validatePostRequestBody.setExchangeSettings(exchangeSettings);
LinkedList<String> resources = new LinkedList<String>();
resources.add("b5b8bc4f-0e36-4ad3-8ddf-248b68260b89");
resources.add("ac87d040-a081-426c-a73b-81133f458a29");
validatePostRequestBody.setResources(resources);
LinkedList<String> workloads = new LinkedList<String>();
workloads.add("Teams");
validatePostRequestBody.setWorkloads(workloads);
validatePostRequestBody.setResourceType("Users");
var result = graphClient.solutions().migrations().crossTenantMigrationJobs().validate().post(validatePostRequestBody);


```