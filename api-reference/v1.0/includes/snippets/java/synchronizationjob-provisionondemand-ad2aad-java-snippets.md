---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody provisionOnDemandPostRequestBody = new com.microsoft.graph.serviceprincipals.item.synchronization.jobs.item.provisionondemand.ProvisionOnDemandPostRequestBody();
LinkedList<SynchronizationJobApplicationParameters> parameters = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters synchronizationJobApplicationParameters = new SynchronizationJobApplicationParameters();
synchronizationJobApplicationParameters.setRuleId("6c409270-f78a-4bc6-af23-7cf3ab6482fe");
LinkedList<SynchronizationJobSubject> subjects = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject synchronizationJobSubject = new SynchronizationJobSubject();
synchronizationJobSubject.setObjectId("CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com");
synchronizationJobSubject.setObjectTypeName("user");
subjects.add(synchronizationJobSubject);
synchronizationJobApplicationParameters.setSubjects(subjects);
parameters.add(synchronizationJobApplicationParameters);
provisionOnDemandPostRequestBody.setParameters(parameters);
StringKeyStringValuePair result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").synchronization().jobs().bySynchronizationJobId("{synchronizationJob-id}").provisionOnDemand().post(provisionOnDemandPostRequestBody);


```