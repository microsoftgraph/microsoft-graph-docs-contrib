---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPersonCertification()
issuingAuthority := "International Academy of Marketing Excellence"
requestBody.SetIssuingAuthority(&issuingAuthority) 
issuingCompany := "International Academy of Marketing Excellence"
requestBody.SetIssuingCompany(&issuingCompany) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certifications, err := graphClient.Users().ByUserId("user-id").Profile().Certifications().ByPersonCertificationId("personCertification-id").Patch(context.Background(), requestBody, nil)


```