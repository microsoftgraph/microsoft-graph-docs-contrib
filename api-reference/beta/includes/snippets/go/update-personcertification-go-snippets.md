---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonCertification()
issuingAuthority := "International Academy of Marketing Excellence"
requestBody.SetIssuingAuthority(&issuingAuthority) 
issuingCompany := "International Academy of Marketing Excellence"
requestBody.SetIssuingCompany(&issuingCompany) 

graphClient.UsersById("user-id").Profile().CertificationsById("personCertification-id").Patch(context.Background(), requestBody, nil)


```