---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PassiveDnsRecordCollectionWithReferencesPage passiveDns = graphClient.security().threatIntelligence().hosts("contoso.com").passiveDns()
	.buildRequest()
	.get();

```