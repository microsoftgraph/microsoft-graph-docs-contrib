
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingPolicy = new BookingSchedulingPolicy
{
	TimeSlotInterval = "PT60M",
	MinimumLeadTime = "P1D",
	MaximumAdvance = "P30D",
	SendConfirmationsToOwner = true,
	AllowStaffSelection = true,
};

var bookingBusiness = new BookingBusiness
{
	Email = "admin@fabrikam.com",
	SchedulingPolicy = schedulingPolicy,
};

await graphClient.BookingBusinesses["fabrikam@M365B489948.onmicrosoft.com"]
	.Request()
	.UpdateAsync(bookingBusiness);

```