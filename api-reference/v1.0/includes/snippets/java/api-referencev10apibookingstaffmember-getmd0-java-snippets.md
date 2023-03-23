---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingStaffMemberBase bookingStaffMemberBase = graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").staffMembers("71d64d0e-7225-49b6-b0b1-070d476cda51")
	.buildRequest()
	.get();

```