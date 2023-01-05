---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {token}"));

OpenShiftChangeRequest openShiftChangeRequest = new OpenShiftChangeRequest();
openShiftChangeRequest.senderMessage = "Can I take this shift?";
openShiftChangeRequest.openShiftId = "577b75d2-a927-48c0-a5d1-dc984894e7b8";

graphClient.teams("788b75d2-a911-48c0-a5e2-dc98480457e3").schedule().openShiftChangeRequests()
	.buildRequest( requestOptions )
	.post(openShiftChangeRequest);

```