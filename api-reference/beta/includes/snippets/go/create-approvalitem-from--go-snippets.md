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

requestBody := graphmodels.NewApprovalItem()


approvalIdentitySet := graphmodels.NewApprovalIdentitySet()
user := graphmodels.NewIdentity()
id := "39d1a7fb-5f54-4c89-b513-241683718c9b"
user.SetId(&id) 
displayName := "Jana Pihlak"
user.SetDisplayName(&displayName) 
approvalIdentitySet.SetUser(user)
approvalIdentitySet1 := graphmodels.NewApprovalIdentitySet()
group := graphmodels.NewIdentity()
id := "f2926053-5479-4bce-ad4c-8394ce51d6c5"
group.SetId(&id) 
approvalIdentitySet1.SetGroup(group)

approvers := []graphmodels.ApprovalIdentitySetable {
	approvalIdentitySet,
	approvalIdentitySet1,
}
requestBody.SetApprovers(approvers)
displayName := "Title of approval"
requestBody.SetDisplayName(&displayName) 
description := "Details of approval"
requestBody.SetDescription(&description) 
approvalType := graphmodels.BASIC_APPROVALITEMTYPE 
requestBody.SetApprovalType(&approvalType) 
allowEmailNotification := true
requestBody.SetAllowEmailNotification(&allowEmailNotification) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
approvalItems, err := graphClient.Solutions().Approval().ApprovalItems().Post(context.Background(), requestBody, nil)


```