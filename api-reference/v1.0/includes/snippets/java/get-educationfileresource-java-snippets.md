---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionResource educationSubmissionResource = graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments("1618dfb0-3ff2-4edf-8d5c-b8f81df00e80").submissions("da443246-384d-673b-32db-bdba9d7f2b51").resources("33cf3eb2-8a35-4f76-8f16-b2abc112d44f")
	.buildRequest()
	.get();

```