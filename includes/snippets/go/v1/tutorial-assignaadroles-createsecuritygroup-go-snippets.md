---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewGroup()
description := "IT Helpdesk to support Contoso employees"
requestBody.SetDescription(&description) 
displayName := "IT Helpdesk (User)"
requestBody.SetDisplayName(&displayName) 
mailEnabled := false
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "userHelpdesk"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := true
requestBody.SetSecurityEnabled(&securityEnabled) 
isAssignableToRole := true
requestBody.SetIsAssignableToRole(&isAssignableToRole) 
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6",
	}
	odataBind := []string {
		"https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6",
		"https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725",
	}
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```