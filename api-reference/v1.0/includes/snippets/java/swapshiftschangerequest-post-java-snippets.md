---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {token}"));

SwapShiftsChangeRequest swapShiftsChangeRequest = new SwapShiftsChangeRequest();
swapShiftsChangeRequest.senderShiftId = "5ad10161-6524-4c7c-9beb-4e8677ba2f6d";
swapShiftsChangeRequest.senderMessage = "I can't make my shift, any chance we can swap?";
swapShiftsChangeRequest.recipientUserId = "567c8ea5-9e32-422a-a663-8270201699cd";
swapShiftsChangeRequest.recipientShiftId = "e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c";

graphClient.teams("788b75d2-a911-48c0-a5e2-dc98480457e3").schedule().swapShiftsChangeRequests()
	.buildRequest( requestOptions )
	.post(swapShiftsChangeRequest);

```