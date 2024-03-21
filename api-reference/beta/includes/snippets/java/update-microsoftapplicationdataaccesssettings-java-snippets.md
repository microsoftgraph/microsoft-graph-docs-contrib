---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MicrosoftApplicationDataAccessSettings microsoftApplicationDataAccessSettings = new MicrosoftApplicationDataAccessSettings();
microsoftApplicationDataAccessSettings.setDisabledForGroup("edbfe4fb-ec70-4300-928f-dbb2ae86c981");
MicrosoftApplicationDataAccessSettings result = graphClient.organization().byOrganizationId("{organization-id}").settings().microsoftApplicationDataAccess().patch(microsoftApplicationDataAccessSettings);


```