---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProgramControl programControl = new ProgramControl();
programControl.setControlId("7e59d237-2fb0-4e5d-b7bb-d4f9f9129213");
programControl.setControlTypeId("6e4f3d20-c5c3-407f-9695-8460952bcc68");
programControl.setProgramId("7e59d237-2fb0-4e5d-b7bb-d4f9f9129213");
ProgramControl result = graphClient.programControls().post(programControl);


```