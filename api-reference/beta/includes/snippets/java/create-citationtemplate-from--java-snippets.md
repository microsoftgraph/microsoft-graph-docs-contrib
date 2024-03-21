---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.CitationTemplate citationTemplate = new com.microsoft.graph.beta.models.security.CitationTemplate();
citationTemplate.setOdataType("#microsoft.graph.security.citationTemplate");
citationTemplate.setDisplayName("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
citationTemplate.setCreatedBy(createdBy);
citationTemplate.setCitationUrl("String");
citationTemplate.setCitationJurisdiction("String");
com.microsoft.graph.models.security.CitationTemplate result = graphClient.security().labels().citations().post(citationTemplate);


```