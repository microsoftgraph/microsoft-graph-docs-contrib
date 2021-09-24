---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionResource educationSubmissionResource = new EducationSubmissionResource();
EducationWordResource resource = new EducationWordResource();
resource.displayName = "Report.docx";
resource.fileUrl = "https://graph.microsoft.com/v1.0/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2";
educationSubmissionResource.resource = resource;

graphClient.education().classes("f4a941ff-9da6-4707-ba5b-0eae93cad0b4").assignments("3c77de7f-539b-49e1-9c96-1274f2f0ee3b").submissions("4af73d2b-6b9c-493f-0688-979087bed39b").resources()
	.buildRequest()
	.post(educationSubmissionResource);

```