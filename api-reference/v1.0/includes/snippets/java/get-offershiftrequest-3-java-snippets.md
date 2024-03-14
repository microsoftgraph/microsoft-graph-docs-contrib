---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OfferShiftRequest offerShiftRequest = new OfferShiftRequest();
offerShiftRequest.setSenderShiftId("SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29");
offerShiftRequest.setSenderMessage("Having a family emergency, could you take this shift for me?");
offerShiftRequest.setRecipientUserId("fe278b61-21ac-4872-8b41-1962bbb98e3c");
OfferShiftRequest result = graphClient.teams().byTeamId("{team-id}").schedule().offerShiftRequests().post(offerShiftRequest, requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
});


```