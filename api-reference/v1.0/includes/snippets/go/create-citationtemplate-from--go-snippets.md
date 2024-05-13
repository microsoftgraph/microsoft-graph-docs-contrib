---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewCitationTemplate()
displayName := "Contoso Company Policy"
requestBody.SetDisplayName(&displayName) 
citationUrl := "www.citationUrl.com"
requestBody.SetCitationUrl(&citationUrl) 
citationJurisdiction := "Contoso"
requestBody.SetCitationJurisdiction(&citationJurisdiction) 

citations, err := graphClient.Security().Labels().Citations().Post(context.Background(), requestBody, nil)


```