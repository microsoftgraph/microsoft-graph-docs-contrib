---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.restart.RestartPostRequestBody restartPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.restart.RestartPostRequestBody();
SynchronizationJobRestartCriteria criteria = new SynchronizationJobRestartCriteria();
criteria.setResetScope(EnumSet.of(SynchronizationJobRestartScope.Watermark, SynchronizationJobRestartScope.Escrows, SynchronizationJobRestartScope.QuarantineState));
restartPostRequestBody.setCriteria(criteria);
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().bySynchronizationJobId("{synchronizationJob-id}").restart().post(restartPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer <token>");
});


```