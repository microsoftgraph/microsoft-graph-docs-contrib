---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Acronym acronym = new Acronym();
acronym.displayName = "GDPR";
acronym.standsFor = "General Data Protection Regulation";
acronym.description = "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.";
acronym.webUrl = "http://contoso.com/GDPR";
acronym.state = AnswerState.PUBLISHED;

graphClient.search().acronyms()
	.buildRequest()
	.post(acronym);

```