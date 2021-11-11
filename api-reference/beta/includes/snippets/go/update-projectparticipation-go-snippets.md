---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewProjectParticipation()
allowedAudiences := "organization"
requestBody.SetAllowedAudiences(&allowedAudiences)
client := msgraphsdk.NewCompanyDetail()
requestBody.SetClient(client)
department := "Corporate Marketing"
client.SetDepartment(&department)
webUrl := "https://www.contoso.com"
client.SetWebUrl(&webUrl)
options := &msgraphsdk.ProjectParticipationRequestBuilderPatchOptions{
	Body: requestBody,
}
projectParticipationId := "projectParticipation-id"
graphClient.Me().Profile().ProjectsById(&projectParticipationId).Patch(options)


```