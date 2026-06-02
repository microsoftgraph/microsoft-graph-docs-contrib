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

requestBody := graphmodels.NewPlannerTaskChatMessage()
content := "<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>"
requestBody.SetContent(&content) 


plannerTaskChatMention := graphmodels.NewPlannerTaskChatMention()
mentioned := "6463a5ce-2119-4198-9f2a-628761df4a62"
plannerTaskChatMention.SetMentioned(&mentioned) 
position := int32(0)
plannerTaskChatMention.SetPosition(&position) 
mentionType := graphmodels.USER_PLANNERTASKCHATMENTIONTYPE 
plannerTaskChatMention.SetMentionType(&mentionType) 

mentions := []graphmodels.PlannerTaskChatMentionable {
	plannerTaskChatMention,
}
requestBody.SetMentions(mentions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").Messages().Post(context.Background(), requestBody, nil)


```