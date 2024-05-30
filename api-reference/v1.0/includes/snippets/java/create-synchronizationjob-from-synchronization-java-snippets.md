---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SynchronizationJob synchronizationJob = new SynchronizationJob();
synchronizationJob.setTemplateId("BoxOutDelta");
SynchronizationJob result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().post(synchronizationJob);


```