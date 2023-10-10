---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationMember()
roles := []string {

}
requestBody.SetRoles(roles)
tenantId := "a18103d1-a6ef-4f66-ac64-e4ef42ea8681"
requestBody.SetTenantId(&tenantId) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408", 
}
requestBody.SetAdditionalData(additionalData)

members, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Members().Post(context.Background(), requestBody, nil)


```