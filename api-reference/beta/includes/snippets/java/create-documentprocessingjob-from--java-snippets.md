---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DocumentProcessingJob documentProcessingJob = new DocumentProcessingJob();
documentProcessingJob.setOdataType("#microsoft.graph.documentProcessingJob");
documentProcessingJob.setJobType(DocumentProcessingJobType.File);
documentProcessingJob.setListItemUniqueId("5955b119-99c1-4af9-97ed-3449e02de6f1");
DocumentProcessingJob result = graphClient.sites().bySiteId("{site-id}").documentProcessingJobs().post(documentProcessingJob);


```