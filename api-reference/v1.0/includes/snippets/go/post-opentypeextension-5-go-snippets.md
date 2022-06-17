---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversation()
topic := "Does anyone have a second?"
requestBody.SetTopic(&topic)
requestBody.SetThreads( []ConversationThread {
	msgraphsdk.NewConversationThread(),
	SetPosts( []Post {
		msgraphsdk.NewPost(),
body := msgraphsdk.NewItemBody()
		SetBody(body)
contentType := "HTML"
		body.SetContentType(&contentType)
content := "This is urgent!"
		body.SetContent(&content)
		SetExtensions( []Extension {
			msgraphsdk.NewExtension(),
			SetAdditionalData(map[string]interface{}{
				"@odata.type": "microsoft.graph.openTypeExtension",
				"extensionName": "Com.Contoso.Benefits",
				"companyName": "Contoso",
				"expirationDate": "2016-08-03T11:00:00.000Z",
				"topPicks":  []String {
					"Employees only",
					"Add spouse or guest",
					"Add family",
				}
			}
		}
	}
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Conversations().Post(requestBody)


```