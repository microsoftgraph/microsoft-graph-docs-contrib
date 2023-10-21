---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<User> subjectsList = new LinkedList<User>();
User subjects = new User();
subjects.id = "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97";

subjectsList.add(subjects);
User subjects1 = new User();
subjects1.id = "ea09ac2e-77e3-4134-85f2-25ccf3c33387";

subjectsList.add(subjects1);
UserCollectionResponse userCollectionResponse = new UserCollectionResponse();
userCollectionResponse.value = subjectsList;
UserCollectionPage userCollectionPage = new UserCollectionPage(userCollectionResponse, null);

graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341")
	.activate(WorkflowActivateParameterSet
		.newBuilder()
		.withSubjects(subjectsList)
		.build())
	.buildRequest()
	.post();

```