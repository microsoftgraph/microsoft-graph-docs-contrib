---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChatMessage()
createdDateTime , err := time.Parse(time.RFC3339, "2019-02-04T19:58:15.511Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
from := graphmodels.NewChatMessageFromIdentitySet()
user := graphmodels.NewIdentity()
id := "id-value"
user.SetId(&id) 
displayName := "Joh Doe"
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
from.SetUser(user)
requestBody.SetFrom(from)
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Hello World"
body.SetContent(&content) 
requestBody.SetBody(body)

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```