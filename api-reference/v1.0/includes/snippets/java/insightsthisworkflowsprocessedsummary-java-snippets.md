---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.identityGovernance().lifecycleWorkflows().insights().microsoftGraphIdentityGovernanceWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTime(OffsetDateTime.parse("{endDateTime}"), OffsetDateTime.parse("{startDateTime}")).get();


```