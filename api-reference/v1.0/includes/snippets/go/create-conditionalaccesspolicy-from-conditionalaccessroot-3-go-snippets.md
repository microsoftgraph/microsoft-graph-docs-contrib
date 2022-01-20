---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConditionalAccessPolicy()
displayName := "Demo app for documentation"
requestBody.SetDisplayName(&displayName)
state := "disabled"
requestBody.SetState(&state)
conditions := msgraphsdk.NewConditionalAccessConditionSet()
requestBody.SetConditions(conditions)
conditions.SetSignInRiskLevels( []RiskLevel {
	"high",
	"medium",
}
conditions.SetClientAppTypes( []ConditionalAccessClientApp {
	"mobileAppsAndDesktopClients",
	"exchangeActiveSync",
	"other",
}
applications := msgraphsdk.NewConditionalAccessApplications()
conditions.SetApplications(applications)
applications.SetIncludeApplications( []String {
	"All",
}
applications.SetExcludeApplications( []String {
	"499b84ac-1321-427f-aa17-267ca6975798",
	"00000007-0000-0000-c000-000000000000",
	"de8bc8b5-d9f9-48b1-a8ad-b748da725064",
	"00000012-0000-0000-c000-000000000000",
	"797f4846-ba00-4fd7-ba43-dac1f8f63013",
	"05a65629-4c1b-48c1-a78b-804c4abdd4af",
	"7df0a125-d3be-4c96-aa54-591f83ff541c",
}
applications.SetIncludeUserActions( []string {
}
users := msgraphsdk.NewConditionalAccessUsers()
conditions.SetUsers(users)
users.SetIncludeUsers( []String {
	"a702a13d-a437-4a07-8a7e-8c052de62dfd",
}
users.SetExcludeUsers( []String {
	"124c5b6a-ffa5-483a-9b88-04c3fce5574a",
	"GuestsOrExternalUsers",
}
users.SetIncludeGroups( []string {
}
users.SetExcludeGroups( []string {
}
users.SetIncludeRoles( []String {
	"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	"cf1c38e5-3621-4004-a7cb-879624dced7c",
	"c4e39bd9-1100-46d3-8c65-fb160da0071f",
}
users.SetExcludeRoles( []String {
	"b0f54661-2d74-4c50-afa3-1ec803f12efe",
}
platforms := msgraphsdk.NewConditionalAccessPlatforms()
conditions.SetPlatforms(platforms)
platforms.SetIncludePlatforms( []ConditionalAccessDevicePlatform {
	"all",
}
platforms.SetExcludePlatforms( []ConditionalAccessDevicePlatform {
	"iOS",
	"windowsPhone",
}
locations := msgraphsdk.NewConditionalAccessLocations()
conditions.SetLocations(locations)
locations.SetIncludeLocations( []String {
	"AllTrusted",
}
locations.SetExcludeLocations( []String {
	"00000000-0000-0000-0000-000000000000",
	"d2136c9c-b049-47ae-b9cf-316e04ef7198",
}
grantControls := msgraphsdk.NewConditionalAccessGrantControls()
requestBody.SetGrantControls(grantControls)
operator := "OR"
grantControls.SetOperator(&operator)
grantControls.SetBuiltInControls( []ConditionalAccessGrantControl {
	"mfa",
	"compliantDevice",
	"domainJoinedDevice",
	"approvedApplication",
	"compliantApplication",
}
grantControls.SetCustomAuthenticationFactors( []string {
}
grantControls.SetTermsOfUse( []String {
	"ce580154-086a-40fd-91df-8a60abac81a0",
	"7f29d675-caff-43e1-8a53-1b8516ed2075",
}
sessionControls := msgraphsdk.NewConditionalAccessSessionControls()
requestBody.SetSessionControls(sessionControls)
sessionControls.SetApplicationEnforcedRestrictions(nil)
sessionControls.SetPersistentBrowser(nil)
cloudAppSecurity := msgraphsdk.NewCloudAppSecuritySessionControl()
sessionControls.SetCloudAppSecurity(cloudAppSecurity)
cloudAppSecurityType := "blockDownloads"
cloudAppSecurity.SetCloudAppSecurityType(&cloudAppSecurityType)
isEnabled := true
cloudAppSecurity.SetIsEnabled(&isEnabled)
signInFrequency := msgraphsdk.NewSignInFrequencySessionControl()
sessionControls.SetSignInFrequency(signInFrequency)
value := int32(4)
signInFrequency.SetValue(&value)
type := "hours"
signInFrequency.SetType(&type)
isEnabled := true
signInFrequency.SetIsEnabled(&isEnabled)
options := &msgraphsdk.PoliciesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().ConditionalAccess().Policies().Post(options)


```