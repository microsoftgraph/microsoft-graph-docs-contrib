
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = await graphClient.BookingBusinesses
	.Request()
	.GetAsync();

```