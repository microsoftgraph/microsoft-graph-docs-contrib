---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPersonCertification()
issuingAuthority := "International Academy of Marketing Excellence"
requestBody.SetIssuingAuthority(&issuingAuthority) 
issuingCompany := "International Academy of Marketing Excellence"
requestBody.SetIssuingCompany(&issuingCompany) 

result, err := graphClient.Users().ByUserId("user-id").Profile().Certifications().ByCertificationId("personCertification-id").Patch(context.Background(), requestBody, nil)


```