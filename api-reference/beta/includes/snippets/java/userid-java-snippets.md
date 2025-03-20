---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryCaseMember ediscoveryCaseMember = new com.microsoft.graph.beta.models.security.EdiscoveryCaseMember();
ediscoveryCaseMember.setRecipientType(EnumSet.of(com.microsoft.graph.beta.models.security.RecipientType.User));
ediscoveryCaseMember.setId("c4af6f9d-37f6-43f9-9e17-601544234146");
com.microsoft.graph.models.security.EdiscoveryCaseMember result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").caseMembers().post(ediscoveryCaseMember);


```