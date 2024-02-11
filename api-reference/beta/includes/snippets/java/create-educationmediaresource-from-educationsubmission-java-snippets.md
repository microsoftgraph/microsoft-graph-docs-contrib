---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSubmissionResource educationSubmissionResource = new EducationSubmissionResource();
EducationMediaResource resource = new EducationMediaResource();
resource.setDisplayName("category.jpg");
resource.setFileUrl("https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RK2WLKUUBAA4ZBKXNBL6QFC2TKG");
resource.setOdataType("#microsoft.graph.educationMediaResource");
educationSubmissionResource.setResource(resource);
EducationSubmissionResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").resources().post(educationSubmissionResource);


```