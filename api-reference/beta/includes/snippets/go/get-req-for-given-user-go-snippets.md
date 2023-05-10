---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/EntitlementManagement/AccessPackages/Item/GetApplicablePolicyRequirements"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetApplicablePolicyRequirementsPostRequestBody()
additionalData := map[string]interface{}{
subject := graphmodels.New()
objectId := "5acd375c-8acb-45de-a958-fa0dd89259ad"
subject.SetObjectId(&objectId) 
	requestBody.SetSubject(subject)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").GetApplicablePolicyRequirements().Post(context.Background(), requestBody, nil)


```