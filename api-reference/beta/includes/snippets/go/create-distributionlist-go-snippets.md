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

requestBody := graphmodels.NewDistributionList()
displayName := "Project Team"
requestBody.SetDisplayName(&displayName) 


member := graphmodels.NewMember()
displayName := "Adele Vance"
member.SetDisplayName(&displayName) 
recipientType := graphmodels.MAILBOX_RECIPIENTTYPE 
member.SetRecipientType(&recipientType) 
additionalData := map[string]interface{}{
	"emailAddress" : "AdeleV@contoso.com", 
}
member.SetAdditionalData(additionalData)
member1 := graphmodels.NewMember()
displayName := "Alex Wilber"
member1.SetDisplayName(&displayName) 
recipientType := graphmodels.MAILBOX_RECIPIENTTYPE 
member1.SetRecipientType(&recipientType) 
additionalData := map[string]interface{}{
	"emailAddress" : "AlexW@contoso.com", 
}
member1.SetAdditionalData(additionalData)

members := []graphmodels.Memberable {
	member,
	member1,
}
requestBody.SetMembers(members)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
distributionLists, err := graphClient.Me().DistributionLists().Post(context.Background(), requestBody, nil)


```