---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContact()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId) 
birthday , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetBirthday(&birthday) 
fileAs := "fileAs-value"
requestBody.SetFileAs(&fileAs) 
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
givenName := "givenName-value"
requestBody.SetGivenName(&givenName) 
initials := "initials-value"
requestBody.SetInitials(&initials) 

result, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").Contacts().Post(context.Background(), requestBody, nil)


```