---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AgreementFileLocalizationCollectionPage localizations = graphClient.agreements("94410bbf-3d3e-4683-8149-f034e55c39dd").file().localizations()
	.buildRequest()
	.get();

```