---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionSubmitListener authenticationEventListener = new OnAttributeCollectionSubmitListener();
authenticationEventListener.priority = 500;
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.includeAllApplications = false;
LinkedList<AuthenticationConditionApplication> includeApplicationsList = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication includeApplications = new AuthenticationConditionApplication();
includeApplications.appId = "a7eed01f-a333-4983-bc6b-d359ec9e5eef";
includeApplicationsList.add(includeApplications);
AuthenticationConditionApplicationCollectionResponse authenticationConditionApplicationCollectionResponse = new AuthenticationConditionApplicationCollectionResponse();
authenticationConditionApplicationCollectionResponse.value = includeApplicationsList;
AuthenticationConditionApplicationCollectionPage authenticationConditionApplicationCollectionPage = new AuthenticationConditionApplicationCollectionPage(authenticationConditionApplicationCollectionResponse, null);
applications.includeApplications = authenticationConditionApplicationCollectionPage;
conditions.applications = applications;
authenticationEventListener.conditions = conditions;
OnAttributeCollectionSubmitCustomExtensionHandler handler = new OnAttributeCollectionSubmitCustomExtensionHandler();
OnAttributeCollectionStartCustomExtension customExtension = new OnAttributeCollectionStartCustomExtension();
customExtension.id = "66867d1f-7824-4f38-aad1-75da1ad09ee2";
handler.customExtension = customExtension;
authenticationEventListener.handler = handler;

graphClient.identity().authenticationEventListeners()
	.buildRequest()
	.post(authenticationEventListener);

```