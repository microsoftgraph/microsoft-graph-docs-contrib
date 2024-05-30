---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.AlertComment alertComment = new com.microsoft.graph.beta.models.security.AlertComment();
alertComment.setOdataType("microsoft.graph.security.alertComment");
alertComment.setComment("Demo for docs");
var result = graphClient.security().alertsV2().byAlertId("{alert-id}").comments().post(alertComment);


```