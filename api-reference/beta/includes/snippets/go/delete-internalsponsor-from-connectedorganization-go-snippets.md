---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizationsById("connectedOrganization-id").InternalSponsorsById("directoryObject-id").Ref().Delete(context.Background(), nil)


```