---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAttachment()
name := "Holiday event"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
item := graphmodels.New()
subject := "Discuss gifts for children"
item.SetSubject(&subject) 
body := graphmodels.New()
contentType := "HTML"
body.SetContentType(&contentType) 
content := "Let's look for funding!"
body.SetContent(&content) 
	item.SetBody(body)
start := graphmodels.New()
dateTime := "2016-12-02T18:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
	item.SetStart(start)
end := graphmodels.New()
dateTime := "2016-12-02T19:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
	item.SetEnd(end)
	requestBody.SetItem(item)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Events().ByEventId("event-id").Attachments().Post(context.Background(), requestBody, nil)


```