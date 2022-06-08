---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String decision = "Deny";

String justification = "Alice switched teams and no longer works with this group";

String principalId = "2043848d-e422-473c-8607-88a3319ff491";

String resourceId = "733ef921-89e1-4d7e-aeff-83612223c37e";

graphClient.identityGovernance().accessReviews().decisions()
	.filterByCurrentUser(AccessReviewInstanceDecisionItemFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn(null)
		.build())
	.recordAllDecisions(AccessReviewInstanceDecisionItemRecordAllDecisionsParameterSet
		.newBuilder()
		.withDecision(decision)
		.withJustification(justification)
		.withPrincipalId(principalId)
		.withResourceId(resourceId)
		.build())
	.buildRequest()
	.post();

```