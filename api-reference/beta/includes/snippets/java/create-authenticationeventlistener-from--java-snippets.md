---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnTokenIssuanceStartListener authenticationEventListener = new OnTokenIssuanceStartListener();
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.includeAllApplications = false;
LinkedList<AuthenticationConditionApplication> includeApplicationsList = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication includeApplications = new AuthenticationConditionApplication();
includeApplications.appId = "a13d0fc1-04ab-4ede-b215-63de0174cbb4";
includeApplicationsList.add(includeApplications);
AuthenticationConditionApplicationCollectionResponse authenticationConditionApplicationCollectionResponse = new AuthenticationConditionApplicationCollectionResponse();
authenticationConditionApplicationCollectionResponse.value = includeApplicationsList;
AuthenticationConditionApplicationCollectionPage authenticationConditionApplicationCollectionPage = new AuthenticationConditionApplicationCollectionPage(authenticationConditionApplicationCollectionResponse, null);
applications.includeApplications = authenticationConditionApplicationCollectionPage;
conditions.applications = applications;
authenticationEventListener.conditions = conditions;
authenticationEventListener.priority = 500;
OnTokenIssuanceStartCustomExtensionHandler handler = new OnTokenIssuanceStartCustomExtensionHandler();
OnTokenIssuanceStartCustomExtension customExtension = new OnTokenIssuanceStartCustomExtension();
customExtension.id = "6fc5012e-7665-43d6-9708-4370863f4e6e";
handler.customExtension = customExtension;
authenticationEventListener.handler = handler;

graphClient.identity().authenticationEventListeners()
	.buildRequest()
	.post(authenticationEventListener);

```