---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewForwardPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 


recipient := graphmodels.NewRecipient()
additionalData := map[string]interface{}{
emailAddress := graphmodels.New()
name := "name-value"
emailAddress.SetName(&name) 
address := "address-value"
emailAddress.SetAddress(&address) 
	recipient.SetEmailAddress(emailAddress)
}
recipient.SetAdditionalData(additionalData)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
requestBody.SetToRecipients(toRecipients)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").PostsById("post-id").Forward().Post(requestBody)


```