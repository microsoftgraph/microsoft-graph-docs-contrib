---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.OrganizationById("organization-id").Branding().LocalizationsById("organizationalBrandingLocalization-id").Delete(context.Background(), nil)


```