---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewCalendarPermission()
emailAddress := msgraphsdk.NewEmailAddress()
requestBody.SetEmailAddress(emailAddress)
name := "Samantha Booth"
emailAddress.SetName(&name)
address := "samanthab@adatum.onmicrosoft.com"
emailAddress.SetAddress(&address)
isInsideOrganization := true
requestBody.SetIsInsideOrganization(&isInsideOrganization)
isRemovable := true
requestBody.SetIsRemovable(&isRemovable)
role := "read"
requestBody.SetRole(&role)
options := &msgraphsdk.CalendarPermissionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Calendar().CalendarPermissions().Post(options);


```