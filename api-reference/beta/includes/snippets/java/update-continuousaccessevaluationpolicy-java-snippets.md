---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContinuousAccessEvaluationPolicy continuousAccessEvaluationPolicy = new ContinuousAccessEvaluationPolicy();
continuousAccessEvaluationPolicy.setOdataType("#microsoft.graph.continuousAccessEvaluationPolicy");
continuousAccessEvaluationPolicy.setMigrate(true);
ContinuousAccessEvaluationPolicy result = graphClient.identity().continuousAccessEvaluationPolicy().patch(continuousAccessEvaluationPolicy);


```