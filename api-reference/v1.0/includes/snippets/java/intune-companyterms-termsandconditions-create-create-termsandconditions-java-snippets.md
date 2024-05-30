---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TermsAndConditions termsAndConditions = new TermsAndConditions();
termsAndConditions.setOdataType("#microsoft.graph.termsAndConditions");
termsAndConditions.setDisplayName("Display Name value");
termsAndConditions.setDescription("Description value");
termsAndConditions.setTitle("Title value");
termsAndConditions.setBodyText("Body Text value");
termsAndConditions.setAcceptanceStatement("Acceptance Statement value");
termsAndConditions.setVersion(7);
TermsAndConditions result = graphClient.deviceManagement().termsAndConditions().post(termsAndConditions);


```