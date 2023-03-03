---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.OrganizationById("organization-id").Branding().LocalizationsById("organizationalBrandingLocalization-id").BannerLogo().Get(context.Background(), nil)


```