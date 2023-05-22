---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<User> subjectsList = new LinkedList<User>();
User subjects = new User();
subjects.id = "df744d9e-2148-4922-88a8-633896c1e929";

subjectsList.add(subjects);
UserCollectionResponse userCollectionResponse = new UserCollectionResponse();
userCollectionResponse.value = subjectsList;
UserCollectionPage userCollectionPage = new UserCollectionPage(userCollectionResponse, null);

graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833")
	.activate(WorkflowActivateParameterSet
		.newBuilder()
		.withSubjects(subjectsList)
		.build())
	.buildRequest()
	.post();

```