---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingStaffMemberBaseCollectionPage staffMembers = graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").staffMembers()
	.buildRequest()
	.get();

```