---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

serviceHealthIssueId := "serviceHealthIssue-id"
graphClient.Admin().ServiceAnnouncement().IssuesById(&serviceHealthIssueId).IncidentReport()(serviceHealthIssue-id).Get()


```