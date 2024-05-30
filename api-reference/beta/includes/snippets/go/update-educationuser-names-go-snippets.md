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

requestBody := graphmodels.NewEducationUser()
displayName := "Rogelio Cazares"
requestBody.SetDisplayName(&displayName) 
givenName := "Rogelio"
requestBody.SetGivenName(&givenName) 
middleName := "Fernando"
requestBody.SetMiddleName(&middleName) 
surname := "Cazares"
requestBody.SetSurname(&surname) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Education().Users().ByEducationUserId("educationUser-id").Patch(context.Background(), requestBody, nil)


```