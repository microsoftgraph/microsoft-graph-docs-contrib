---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionCollectionPage submissions = graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments("efcdf80b-a5de-42ac-8579-e40b0223d48b").submissions()
	.buildRequest()
	.expand("outcomes")
	.get();

```