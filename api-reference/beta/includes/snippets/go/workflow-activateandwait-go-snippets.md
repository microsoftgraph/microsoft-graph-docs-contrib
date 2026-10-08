---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  //other-imports
)

requestBody := graphidentitygovernance.NewActivateAndWaitPostRequestBody()
subject := graphmodelsidentitygovernance.NewProvisioningObjectWorkflowSubject()
id := "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe"
subject.SetId(&id) 


attributeSetEntry := graphmodelsidentitygovernance.NewAttributeSetEntry()
name := "department"
attributeSetEntry.SetName(&name) 
value := "Engineering"
attributeSetEntry.SetValue(&value) 
attributeSetEntry1 := graphmodelsidentitygovernance.NewAttributeSetEntry()
name := "jobTitle"
attributeSetEntry1.SetName(&name) 
value := "Software Engineer"
attributeSetEntry1.SetValue(&value) 

attributeSetEntries := []graphmodelsidentitygovernance.AttributeSetEntryable {
	attributeSetEntry,
	attributeSetEntry1,
}
subject.SetAttributeSetEntries(attributeSetEntries)
requestBody.SetSubject(subject)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphIdentityGovernanceActivateAndWait, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceActivateAndWait().Post(context.Background(), requestBody, nil)


```