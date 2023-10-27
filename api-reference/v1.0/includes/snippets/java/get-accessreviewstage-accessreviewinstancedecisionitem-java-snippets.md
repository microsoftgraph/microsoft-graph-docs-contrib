---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = graphClient.identityGovernance().accessReviews().definitions("5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0").instances("6444d4fd-ab55-4608-8cf9-c6702d172bcc").stages("9458f255-dff2-4d86-9a05-69438f49d7f8").decisions("e6cafba0-cbf0-4748-8868-0810c7f4cc06")
	.buildRequest()
	.select("accessReviewId,reviewedDateTime,decision,justification,recommendation,reviewedBy,target")
	.get();

```