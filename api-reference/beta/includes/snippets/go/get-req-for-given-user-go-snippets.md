---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewGetApplicablePolicyRequirementsPostRequestBody()
additionalData := map[string]interface{}{
subject := graphmodels.New()
objectId := "5acd375c-8acb-45de-a958-fa0dd89259ad"
subject.SetObjectId(&objectId) 
	requestBody.SetSubject(subject)
}
requestBody.SetAdditionalData(additionalData)

getApplicablePolicyRequirements, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").GetApplicablePolicyRequirements().Post(context.Background(), requestBody, nil)


```