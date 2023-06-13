---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.distributeForStudentWork = false;
EducationTeamsAppResource resource = new EducationTeamsAppResource();
resource.displayName = "Template - My Story";
resource.appId = "6fbeb90c-3d55-4bd5-82c4-bfe824be4300";
resource.appIconWebUrl = "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2";
resource.teamsEmbeddedContentUrl = "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1";
resource.webUrl = "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08";
educationAssignmentResource.resource = resource;

graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignments("820371a1-4589-4a4a-8b40-9d5db94b9186").resources()
	.buildRequest()
	.post(educationAssignmentResource);

```