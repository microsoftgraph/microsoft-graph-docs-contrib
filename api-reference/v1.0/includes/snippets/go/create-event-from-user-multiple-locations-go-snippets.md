---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEvent()
subject := "Plan summer company picnic"
requestBody.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "Let's kick-start this event planning!"
body.SetContent(&content)
start := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetStart(start)
dateTime := "2017-08-30T11:00:00"
start.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone)
end := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetEnd(end)
dateTime := "2017-08-30T12:00:00"
end.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone)
requestBody.SetAttendees( []Attendee {
	msgraphsdk.NewAttendee(),
	SetAdditionalData(map[string]interface{}{
		"type": "Required",
	}
	msgraphsdk.NewAttendee(),
	SetAdditionalData(map[string]interface{}{
		"type": "Required",
	}
}
location := msgraphsdk.NewLocation()
requestBody.SetLocation(location)
displayName := "Conf Room 3; Fourth Coffee; Home Office"
location.SetDisplayName(&displayName)
locationType := "Default"
location.SetLocationType(&locationType)
requestBody.SetLocations( []Location {
	msgraphsdk.NewLocation(),
displayName := "Conf Room 3"
	SetDisplayName(&displayName)
	msgraphsdk.NewLocation(),
displayName := "Fourth Coffee"
	SetDisplayName(&displayName)
address := msgraphsdk.NewPhysicalAddress()
	SetAddress(address)
street := "4567 Main St"
	address.SetStreet(&street)
city := "Redmond"
	address.SetCity(&city)
state := "WA"
	address.SetState(&state)
countryOrRegion := "US"
	address.SetCountryOrRegion(&countryOrRegion)
postalCode := "32008"
	address.SetPostalCode(&postalCode)
coordinates := msgraphsdk.NewOutlookGeoCoordinates()
	SetCoordinates(coordinates)
latitude := float64(47.672)
	coordinates.SetLatitude(&latitude)
longitude := float64(-102.103)
	coordinates.SetLongitude(&longitude)
	msgraphsdk.NewLocation(),
displayName := "Home Office"
	SetDisplayName(&displayName)
}
allowNewTimeProposals := true
requestBody.SetAllowNewTimeProposals(&allowNewTimeProposals)
headers := map[string]string{
	"Prefer": "outlook.timezone="Pacific Standard Time""
}
options := &msgraphsdk.EventsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
result, err := graphClient.Me().Events().PostWithRequestConfigurationAndResponseHandler(requestBody, options, nil)


```