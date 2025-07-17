---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryCaseMember ediscoveryCaseMember = new com.microsoft.graph.beta.models.security.EdiscoveryCaseMember();
ediscoveryCaseMember.setRecipientType(EnumSet.of(com.microsoft.graph.beta.models.security.RecipientType.RoleGroup));
ediscoveryCaseMember.setId("b9fb4f22-5f90-47a0-b309-44fe96a959fd");
com.microsoft.graph.models.security.EdiscoveryCaseMember result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").caseMembers().post(ediscoveryCaseMember);


```