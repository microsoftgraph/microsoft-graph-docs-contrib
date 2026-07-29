---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.Relation relation = new com.microsoft.graph.beta.models.security.casemanagement.Relation();
relation.setRelatedResourceId("987654321");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("displayName", "Related incident");
relation.setAdditionalData(additionalData);
com.microsoft.graph.models.security.casemanagement.Relation result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").relations().byRelationId("{relation-id}").patch(relation);


```