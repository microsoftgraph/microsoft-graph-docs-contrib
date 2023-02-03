---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SynchronizationJobApplicationParameters> parametersList = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters parameters = new SynchronizationJobApplicationParameters();
parameters.ruleId = "6c409270-f78a-4bc6-af23-7cf3ab6482fe";
LinkedList<SynchronizationJobSubject> subjectsList = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject subjects = new SynchronizationJobSubject();
subjects.objectId = "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com";
subjects.objectTypeName = "user";
subjectsList.add(subjects);
parameters.subjects = subjectsList;

parametersList.add(parameters);

graphClient.servicePrincipals("3e916d82-dd59-4944-824d-93092908fd8d").synchronization().jobs("264ea562-28cd-42b1-93e0-8de1f0560581")
	.provisionOnDemand(SynchronizationJobProvisionOnDemandParameterSet
		.newBuilder()
		.withParameters(parametersList)
		.build())
	.buildRequest()
	.post();

```