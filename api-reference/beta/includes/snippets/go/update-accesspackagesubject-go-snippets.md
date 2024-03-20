---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageSubject()
subjectLifecycle := graphmodels.GOVERNED_ACCESSPACKAGESUBJECTLIFECYCLE 
requestBody.SetSubjectLifecycle(&subjectLifecycle) 

objectId := "{objectId}"
subjects, err := graphClient.IdentityGovernance().EntitlementManagement().SubjectsWithObjectId(&objectId).Patch(context.Background(), requestBody, nil)


```