---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationFileResource resource = new EducationFileResource();
resource.setOdataType("#microsoft.graph.educationFileResource");
resource.setDisplayName("csv_file.csv");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 file = new ();
file.setOdataid("https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7A2QVVORGJNVBIC4LLM3XQ6UTS");
additionalData.put("file", file);
resource.setAdditionalData(additionalData);
educationModuleResource.setResource(resource);
EducationModuleResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().byEducationModuleId("{educationModule-id}").resources().post(educationModuleResource);


```