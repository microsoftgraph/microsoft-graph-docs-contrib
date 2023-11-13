---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationResource resource = new EducationResource();
resource.displayName = "new pdf file patched.pdf";
educationModuleResource.resource = resource;

graphClient.education().classes("0b78e924-9623-49d8-b444-23bfabafa4fe").modules("fa1f6b67-7da6-458d-82fd-0d671df7bc31").resources("2fb5e262-611b-4672-8f55-1236b7f2804a")
	.buildRequest()
	.patch(educationModuleResource);

```