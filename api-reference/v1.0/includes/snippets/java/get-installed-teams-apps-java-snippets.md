---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = graphClient.teams("02bd9fd6-8f93-4758-87c3-1fb73740a315").installedApps("MDJiZDlmZDYtOGY5My00NzU4LTg3YzMtMWZiNzM3NDBhMzE1IyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg=")
	.buildRequest()
	.get();

```