---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Accept-Language", "fr-FR")

configuration := &graphconfig.OrganizationItemBrandingRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.OrganizationById("organization-id").Branding().Get(context.Background(), configuration)


```