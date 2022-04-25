---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOfferShiftRequest()
senderShiftId := "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29"
requestBody.SetSenderShiftId(&senderShiftId)
senderMessage := "Having a family emergency, could you take this shift for me?"
requestBody.SetSenderMessage(&senderMessage)
recipientUserId := "fe278b61-21ac-4872-8b41-1962bbb98e3c"
requestBody.SetRecipientUserId(&recipientUserId)
headers := map[string]string{
	"Authorization": "Bearer {token}"
}
options := &msgraphsdk.OfferShiftRequestsRequestBuilderPostOptions{
	Body: requestBody,
	H: headers,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Schedule().OfferShiftRequests().Post(options)


```