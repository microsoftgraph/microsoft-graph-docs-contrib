---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.setDistributeForStudentWork(false);
EducationLinkResource resource = new EducationLinkResource();
resource.setDisplayName("Where the Wonders of Learning Never Cease | Wonderopolis");
resource.setLink("https://wonderopolis.org/");
resource.setOdataType("#microsoft.graph.educationLinkResource");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("thumbnailPreviewUrl", null);
resource.setAdditionalData(additionalData);
educationAssignmentResource.setResource(resource);
EducationAssignmentResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").resources().post(educationAssignmentResource);


```