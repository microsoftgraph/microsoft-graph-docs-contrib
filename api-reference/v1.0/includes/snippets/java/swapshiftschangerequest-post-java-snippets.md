---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SwapShiftsChangeRequest swapShiftsChangeRequest = new SwapShiftsChangeRequest();
swapShiftsChangeRequest.setSenderShiftId("5ad10161-6524-4c7c-9beb-4e8677ba2f6d");
swapShiftsChangeRequest.setSenderMessage("I can't make my shift, any chance we can swap?");
swapShiftsChangeRequest.setRecipientUserId("567c8ea5-9e32-422a-a663-8270201699cd");
swapShiftsChangeRequest.setRecipientShiftId("e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c");
SwapShiftsChangeRequest result = graphClient.teams().byTeamId("{team-id}").schedule().swapShiftsChangeRequests().post(swapShiftsChangeRequest, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
});


```