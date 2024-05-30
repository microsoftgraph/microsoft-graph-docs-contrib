---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgreementFile result = graphClient.agreements().byAgreementId("{agreement-id}").file().get(requestConfiguration -> {
	requestConfiguration.headers.add("Accept-Language", "fr-FR");
});


```