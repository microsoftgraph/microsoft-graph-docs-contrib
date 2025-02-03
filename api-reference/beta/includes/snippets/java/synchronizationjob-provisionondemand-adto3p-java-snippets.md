---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody provisionOnDemandPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody();
LinkedList<SynchronizationJobApplicationParameters> parameters = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters synchronizationJobApplicationParameters = new SynchronizationJobApplicationParameters();
LinkedList<SynchronizationJobSubject> subjects = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject synchronizationJobSubject = new SynchronizationJobSubject();
synchronizationJobSubject.setObjectId("9bb0f679-a883-4a6f-8260-35b491b8b8c8");
synchronizationJobSubject.setObjectTypeName("User");
subjects.add(synchronizationJobSubject);
synchronizationJobApplicationParameters.setSubjects(subjects);
synchronizationJobApplicationParameters.setRuleId("ea807875-5618-4f0a-9125-0b46a05298ca");
parameters.add(synchronizationJobApplicationParameters);
provisionOnDemandPostRequestBody.setParameters(parameters);
StringKeyStringValuePair result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().bySynchronizationJobId("{synchronizationJob-id}").provisionOnDemand().post(provisionOnDemandPostRequestBody);


```