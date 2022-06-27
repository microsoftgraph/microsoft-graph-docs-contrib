---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AgreementAcceptanceCollectionPage acceptances = graphClient.identityGovernance().termsOfUse().agreements("94410bbf-3d3e-4683-8149-f034e55c39dd").acceptances()
	.buildRequest()
	.get();

```