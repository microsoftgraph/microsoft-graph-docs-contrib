---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CitationTemplate citationTemplate = new CitationTemplate();
citationTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
citationTemplate.createdBy = createdBy;
citationTemplate.citationUrl = "String";
citationTemplate.citationJurisdiction = "String";

graphClient.security().labels().citations()
	.buildRequest()
	.post(citationTemplate);

```