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
	  //other-imports
)

requestBody := graphidentitygovernance.NewGetApplicablePolicyRequirementsPostRequestBody()
additionalData := map[string]interface{}{
subject := graph.New()
objectId := "5acd375c-8acb-45de-a958-fa0dd89259ad"
subject.SetObjectId(&objectId) 
	requestBody.SetSubject(subject)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getApplicablePolicyRequirements, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").GetApplicablePolicyRequirements().PostAsGetApplicablePolicyRequirementsPostResponse(context.Background(), requestBody, nil)


```