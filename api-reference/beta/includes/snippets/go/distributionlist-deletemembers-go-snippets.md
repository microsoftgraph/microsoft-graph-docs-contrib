---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemDeleteMembersPostRequestBody()


member := graphmodels.NewMember()
key := "MeganB@contoso.com"
member.SetKey(&key) 
routingType := "SMTP"
member.SetRoutingType(&routingType) 
recipientType := graphmodels.CONTACT_RECIPIENTTYPE 
member.SetRecipientType(&recipientType) 

members := []graphmodels.Memberable {
	member,
}
requestBody.SetMembers(members)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deleteMembers, err := graphClient.Me().DistributionLists().ByDistributionListId("distributionList-id").DeleteMembers().Post(context.Background(), requestBody, nil)


```