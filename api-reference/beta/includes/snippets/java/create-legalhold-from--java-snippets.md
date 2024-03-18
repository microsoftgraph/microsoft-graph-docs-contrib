---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.LegalHold legalHold = new com.microsoft.graph.beta.models.ediscovery.LegalHold();
legalHold.setOdataType("#microsoft.graph.ediscovery.legalHold");
legalHold.setDescription("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
legalHold.setCreatedBy(createdBy);
legalHold.setIsEnabled(boolean);
legalHold.setStatus(com.microsoft.graph.beta.models.ediscovery.LegalHoldStatus.Pending);
legalHold.setContentQuery("String");
LinkedList<String> errors = new LinkedList<String>();
errors.add("String");
legalHold.setErrors(errors);
legalHold.setDisplayName("String");
com.microsoft.graph.models.ediscovery.LegalHold result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").legalHolds().post(legalHold);


```