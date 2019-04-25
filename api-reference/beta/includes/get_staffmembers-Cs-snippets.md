
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingStaffMember = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].StaffMembers
	.Request()
	.GetAsync();

```