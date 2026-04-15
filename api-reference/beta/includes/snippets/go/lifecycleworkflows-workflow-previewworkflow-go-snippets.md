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
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentitygovernance.NewPreviewWorkflowPostRequestBody()


directoryObject := graphmodels.NewUser()
id := "b59552b8-fa7b-4f68-8496-0a529aace8c0"
directoryObject.SetId(&id) 
directoryObject1 := graphmodels.NewUser()
id := "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
directoryObject1.SetId(&id) 

subjects := []graphmodels.DirectoryObjectable {
	directoryObject,
	directoryObject1,
}
requestBody.SetSubjects(subjects)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernancePreviewWorkflow().Post(context.Background(), requestBody, nil)


```