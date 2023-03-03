---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<User> subjectsList = new LinkedList<User>();
User subjects = new User();
subjects.id = "8930f0c7-cdd7-4885-9260-3b4a8111de5c";

subjectsList.add(subjects);
UserCollectionResponse userCollectionResponse = new UserCollectionResponse();
userCollectionResponse.value = subjectsList;
UserCollectionPage userCollectionPage = new UserCollectionPage(userCollectionResponse, null);

graphClient.identityGovernance().lifecycleWorkflows().workflows("368dfba3-2303-4e02-b258-87d742187e1b")
	.activate(WorkflowActivateParameterSet
		.newBuilder()
		.withSubjects(subjectsList)
		.build())
	.buildRequest()
	.post();

```