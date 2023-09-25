---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WhoisHistoryRecordCollectionWithReferencesPage history = graphClient.security().threatIntelligence().hosts("contoso.com").whois().history()
	.buildRequest()
	.get();

```