---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivateandwait.ActivateAndWaitPostRequestBody activateAndWaitPostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivateandwait.ActivateAndWaitPostRequestBody();
com.microsoft.graph.beta.models.identitygovernance.ProvisioningObjectWorkflowSubject subject = new com.microsoft.graph.beta.models.identitygovernance.ProvisioningObjectWorkflowSubject();
subject.setOdataType("#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject");
subject.setId("b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe");
LinkedList<com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry> attributeSetEntries = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry>();
com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry attributeSetEntry = new com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry();
attributeSetEntry.setName("department");
attributeSetEntry.setValue("Engineering");
attributeSetEntries.add(attributeSetEntry);
com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry attributeSetEntry1 = new com.microsoft.graph.beta.models.identitygovernance.AttributeSetEntry();
attributeSetEntry1.setName("jobTitle");
attributeSetEntry1.setValue("Software Engineer");
attributeSetEntries.add(attributeSetEntry1);
subject.setAttributeSetEntries(attributeSetEntries);
activateAndWaitPostRequestBody.setSubject(subject);
var result = graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivateAndWait().post(activateAndWaitPostRequestBody);


```