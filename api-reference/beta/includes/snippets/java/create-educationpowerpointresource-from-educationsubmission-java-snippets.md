---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSubmissionResource educationSubmissionResource = new EducationSubmissionResource();
EducationPowerPointResource resource = new EducationPowerPointResource();
resource.setOdataType("#microsoft.graph.educationPowerPointResource");
resource.setDisplayName("state diagram.pptx");
resource.setFileUrl("https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RN3MHWWM7BNXJD2UD5OMRFEDKN2");
educationSubmissionResource.setResource(resource);
EducationSubmissionResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").resources().post(educationSubmissionResource);


```