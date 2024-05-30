---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewContact()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId) 
birthday , err := time.Parse(time.RFC3339, "datetime-value")
requestBody.SetBirthday(&birthday) 
fileAs := "fileAs-value"
requestBody.SetFileAs(&fileAs) 
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
givenName := "givenName-value"
requestBody.SetGivenName(&givenName) 
initials := "initials-value"
requestBody.SetInitials(&initials) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contacts, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").Contacts().Post(context.Background(), requestBody, nil)


```