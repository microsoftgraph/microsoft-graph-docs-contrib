---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.distributeForStudentWork = false;
EducationLinkResource resource = new EducationLinkResource();
resource.displayName = "Where the Wonders of Learning Never Cease | Wonderopolis";
resource.link = "https://wonderopolis.org/";
resource.thumbnailPreviewUrl = null;
educationAssignmentResource.resource = resource;

graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments("1618dfb0-3ff2-4edf-8d5c-b8f81df00e80").resources()
	.buildRequest()
	.post(educationAssignmentResource);

```