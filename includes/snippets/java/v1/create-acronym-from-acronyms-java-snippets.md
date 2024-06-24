---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.search.Acronym acronym = new com.microsoft.graph.models.search.Acronym();
acronym.setDisplayName("GDPR");
acronym.setStandsFor("General Data Protection Regulation");
acronym.setDescription("A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.");
acronym.setWebUrl("http://contoso.com/GDPR");
acronym.setState(com.microsoft.graph.models.search.AnswerState.Published);
com.microsoft.graph.models.search.Acronym result = graphClient.search().acronyms().post(acronym);


```