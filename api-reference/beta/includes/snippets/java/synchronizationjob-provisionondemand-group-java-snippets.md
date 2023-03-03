---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SynchronizationJobApplicationParameters> parametersList = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters parameters = new SynchronizationJobApplicationParameters();
parameters.ruleId = "33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2";
LinkedList<SynchronizationJobSubject> subjectsList = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject subjects = new SynchronizationJobSubject();
subjects.objectId = "8213fd99-d6b6-417b-8e13-af6334856215";
subjects.objectTypeName = "Group";
SynchronizationLinkedObjects links = new SynchronizationLinkedObjects();
LinkedList<SynchronizationJobSubject> membersList = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject members = new SynchronizationJobSubject();
members.objectId = "cbc86211-6ada-4803-b73f-8039cf56d8a2";
members.objectTypeName = "User";
membersList.add(members);
SynchronizationJobSubject members1 = new SynchronizationJobSubject();
members1.objectId = "2bc86211-6ada-4803-b73f-8039cf56d8a2";
members1.objectTypeName = "User";
membersList.add(members1);
links.members = membersList;
subjects.links = links;
subjectsList.add(subjects);
parameters.subjects = subjectsList;

parametersList.add(parameters);

graphClient.servicePrincipals("4e116d82-dd59-4944-824d-93091408fd8d").synchronization().jobs("664ea562-18cd-42bb-33e0-8de1f0560581")
	.provisionOnDemand(SynchronizationJobProvisionOnDemandParameterSet
		.newBuilder()
		.withParameters(parametersList)
		.build())
	.buildRequest()
	.post();

```