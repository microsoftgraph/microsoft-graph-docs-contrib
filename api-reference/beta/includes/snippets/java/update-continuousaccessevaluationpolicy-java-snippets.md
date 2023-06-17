---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContinuousAccessEvaluationPolicy continuousAccessEvaluationPolicy = new ContinuousAccessEvaluationPolicy();
continuousAccessEvaluationPolicy.migrate = true;

graphClient.identity().continuousAccessEvaluationPolicy()
	.buildRequest()
	.patch(continuousAccessEvaluationPolicy);

```