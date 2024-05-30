---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody provisionOnDemandPostRequestBody = new com.microsoft.graph.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody();
LinkedList<SynchronizationJobApplicationParameters> parameters = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters synchronizationJobApplicationParameters = new SynchronizationJobApplicationParameters();
synchronizationJobApplicationParameters.setRuleId("33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2");
LinkedList<SynchronizationJobSubject> subjects = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject synchronizationJobSubject = new SynchronizationJobSubject();
synchronizationJobSubject.setObjectId("8213fd99-d6b6-417b-8e13-af6334856215");
synchronizationJobSubject.setObjectTypeName("Group");
SynchronizationLinkedObjects links = new SynchronizationLinkedObjects();
LinkedList<SynchronizationJobSubject> members = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject synchronizationJobSubject1 = new SynchronizationJobSubject();
synchronizationJobSubject1.setObjectId("cbc86211-6ada-4803-b73f-8039cf56d8a2");
synchronizationJobSubject1.setObjectTypeName("User");
members.add(synchronizationJobSubject1);
SynchronizationJobSubject synchronizationJobSubject2 = new SynchronizationJobSubject();
synchronizationJobSubject2.setObjectId("2bc86211-6ada-4803-b73f-8039cf56d8a2");
synchronizationJobSubject2.setObjectTypeName("User");
members.add(synchronizationJobSubject2);
links.setMembers(members);
synchronizationJobSubject.setLinks(links);
subjects.add(synchronizationJobSubject);
synchronizationJobApplicationParameters.setSubjects(subjects);
parameters.add(synchronizationJobApplicationParameters);
provisionOnDemandPostRequestBody.setParameters(parameters);
StringKeyStringValuePair result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().bySynchronizationJobId("{synchronizationJob-id}").provisionOnDemand().post(provisionOnDemandPostRequestBody);


```