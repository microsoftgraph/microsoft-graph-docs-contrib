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


requestBody := graphmodels.NewEvent()
subject := "Family reunion"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Let's get together this Thanksgiving!"
body.SetContent(&content) 
requestBody.SetBody(body)
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2015-11-26T09:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2015-11-29T21:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)


attendee := graphmodels.NewAttendee()
emailAddress := graphmodels.NewEmailAddress()
address := "Terrie@contoso.com"
emailAddress.SetAddress(&address) 
name := "Terrie Barrera"
emailAddress.SetName(&name) 
attendee.SetEmailAddress(emailAddress)
type := graphmodels.REQUIRED_ATTENDEETYPE 
attendee.SetType(&type) 
attendee1 := graphmodels.NewAttendee()
emailAddress := graphmodels.NewEmailAddress()
address := "Lauren@contoso.com"
emailAddress.SetAddress(&address) 
name := "Lauren Solis"
emailAddress.SetName(&name) 
attendee1.SetEmailAddress(emailAddress)
type := graphmodels.REQUIRED_ATTENDEETYPE 
attendee1.SetType(&type) 

attendees := []graphmodels.attendeeable {
	attendee,
	attendee1,
}
requestBody.SetAttendees(attendees)


multiValueLegacyExtendedProperty := graphmodels.NewMultiValueLegacyExtendedProperty()
id := "StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation"
multiValueLegacyExtendedProperty.SetId(&id) 
value := []string {
	"Food",
	"Hiking",
	"Swimming",
}
multiValueLegacyExtendedProperty.SetValue(value)

multiValueExtendedProperties := []graphmodels.MultiValueLegacyExtendedPropertyable {
	multiValueLegacyExtendedProperty,
}
requestBody.SetMultiValueExtendedProperties(multiValueExtendedProperties)

result, err := graphClient.Me().Events().Post(context.Background(), requestBody, nil)


```