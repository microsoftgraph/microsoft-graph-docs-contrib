---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReplyPostRequestBody()
post := graphmodels.NewPost()
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "I attached an event."
body.SetContent(&content) 
post.SetBody(body)


attachment := graphmodels.NewAttachment()
"@odata.type" := "#microsoft.graph.itemAttachment"
attachment.Set"@odata.type"(&"@odata.type") 
name := "Holiday event"
attachment.SetName(&name) 
additionalData := map[string]interface{}{
item := graphmodels.New()
"@odata.type" := "microsoft.graph.event"
item.Set"@odata.type"(&"@odata.type") 
subject := "Discuss gifts for children"
item.SetSubject(&subject) 
body := graphmodels.New()
contentType := "HTML"
body.SetContentType(&contentType) 
content := "Let's look for funding!"
body.SetContent(&content) 
	item.SetBody(body)
start := graphmodels.New()
dateTime := "2019-12-02T18:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
	item.SetStart(start)
end := graphmodels.New()
dateTime := "2019-12-02T19:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
	item.SetEnd(end)
	attachment.SetItem(item)
}
attachment.SetAdditionalData(additionalData)

attachments := []graphmodels.Attachmentable {
	attachment,

}
post.SetAttachments(attachments)
requestBody.SetPost(post)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").Reply().Post(requestBody)


```