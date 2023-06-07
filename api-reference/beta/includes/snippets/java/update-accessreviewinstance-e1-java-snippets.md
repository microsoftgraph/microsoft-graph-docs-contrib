---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstance accessReviewInstance = new AccessReviewInstance();
PrincipalResourceMembershipsScope scope = new PrincipalResourceMembershipsScope();
LinkedList<AccessReviewScope> principalScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope principalScopes = new AccessReviewQueryScope();
principalScopes.query = "/v1.0/users";
principalScopes.queryType = "MicrosoftGraph";
principalScopesList.add(principalScopes);
AccessReviewQueryScope principalScopes1 = new AccessReviewQueryScope();
principalScopes1.query = "/v1.0/groups";
principalScopes1.queryType = "MicrosoftGraph";
principalScopesList.add(principalScopes1);
scope.principalScopes = principalScopesList;
LinkedList<AccessReviewScope> resourceScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope resourceScopes = new AccessReviewQueryScope();
resourceScopes.query = "/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
resourceScopes.queryType = "MicrosoftGraph";
resourceScopesList.add(resourceScopes);
scope.resourceScopes = resourceScopesList;
accessReviewInstance.scope = scope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5";
reviewers.queryType = "MicrosoftGraph";
reviewersList.add(reviewers);
accessReviewInstance.reviewers = reviewersList;
LinkedList<AccessReviewReviewerScope> fallbackReviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope fallbackReviewers = new AccessReviewReviewerScope();
fallbackReviewers.query = "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e";
fallbackReviewers.queryType = "MicrosoftGraph";
fallbackReviewersList.add(fallbackReviewers);
AccessReviewReviewerScope fallbackReviewers1 = new AccessReviewReviewerScope();
fallbackReviewers1.query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5";
fallbackReviewers1.queryType = "MicrosoftGraph";
fallbackReviewersList.add(fallbackReviewers1);
accessReviewInstance.fallbackReviewers = fallbackReviewersList;

graphClient.identityGovernance().accessReviews().definitions("5dcfcc88-da88-4252-8629-a0807b4b076d").instances("720b8ee0-cee4-42ac-b164-894c48703acc")
	.buildRequest()
	.patch(accessReviewInstance);

```