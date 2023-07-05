---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAssignment termsAndConditionsAssignment = graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").assignments("{termsAndConditionsAssignmentId}")
	.buildRequest()
	.get();

```