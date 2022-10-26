---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingStaffMemberCollectionPage staffMembers = graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").staffMembers()
	.buildRequest()
	.get();

```