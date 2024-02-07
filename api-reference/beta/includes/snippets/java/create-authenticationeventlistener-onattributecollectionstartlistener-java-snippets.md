---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionStartListener authenticationEventListener = new OnAttributeCollectionStartListener();
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
OnAttributeCollectionStartCustomExtensionHandler handler = new OnAttributeCollectionStartCustomExtensionHandler();
OnAttributeCollectionStartCustomExtension customExtension = new OnAttributeCollectionStartCustomExtension();
customExtension.id = "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02";
handler.customExtension = customExtension;
authenticationEventListener.handler = handler;

graphClient.identity().authenticationEventListeners()
	.buildRequest()
	.post(authenticationEventListener);

```