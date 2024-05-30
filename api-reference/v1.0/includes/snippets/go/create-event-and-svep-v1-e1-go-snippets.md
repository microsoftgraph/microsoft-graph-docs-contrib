---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEvent()
subject := "Celebrate Thanksgiving"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Let's get together!"
body.SetContent(&content) 
requestBody.SetBody(body)
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2015-11-26T18:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2015-11-26T23:00:00"
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

attendees := []graphmodels.Attendeeable {
	attendee,
}
requestBody.SetAttendees(attendees)


singleValueLegacyExtendedProperty := graphmodels.NewSingleValueLegacyExtendedProperty()
id := "String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun"
singleValueLegacyExtendedProperty.SetId(&id) 
value := "Food"
singleValueLegacyExtendedProperty.SetValue(&value) 

singleValueExtendedProperties := []graphmodels.SingleValueLegacyExtendedPropertyable {
	singleValueLegacyExtendedProperty,
}
requestBody.SetSingleValueExtendedProperties(singleValueExtendedProperties)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
events, err := graphClient.Me().Events().Post(context.Background(), requestBody, nil)


```