---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String source = "Contoso.SodCheckProcess";

String type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated";

AccessPackageAssignmentRequestCallbackData data = new AccessPackageAssignmentRequestCallbackData();
data.stage = AccessPackageCustomExtensionStage.ASSIGNMENT_REQUEST_CREATED;
data.customExtensionStageInstanceId = "957d0c50-466b-4840-bb5b-c92cea7141ff";
data.customExtensionStageInstanceDetail = "This user is all verified";

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests("0e60f18c-b2a0-4887-9da8-da2e30a39d99")
	.resume(AccessPackageAssignmentRequestResumeParameterSet
		.newBuilder()
		.withSource(source)
		.withType(type)
		.withData(data)
		.build())
	.buildRequest()
	.post();

```