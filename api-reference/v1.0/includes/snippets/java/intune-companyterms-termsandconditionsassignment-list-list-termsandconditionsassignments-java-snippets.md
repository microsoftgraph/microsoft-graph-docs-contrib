---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAssignmentCollectionPage assignments = graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").assignments()
	.buildRequest()
	.get();

```