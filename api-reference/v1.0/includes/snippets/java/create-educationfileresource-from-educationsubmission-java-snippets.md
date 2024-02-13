---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSubmissionResource educationSubmissionResource = new EducationSubmissionResource();
EducationFileResource resource = new EducationFileResource();
resource.setDisplayName("_FTP_EDC-61424749-250820211136.pdf");
resource.setFileUrl("https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RL45XVPGDBRW5FLDR62Z5TCMGG3");
resource.setOdataType("#microsoft.graph.educationFileResource");
educationSubmissionResource.setResource(resource);
EducationSubmissionResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").resources().post(educationSubmissionResource);


```