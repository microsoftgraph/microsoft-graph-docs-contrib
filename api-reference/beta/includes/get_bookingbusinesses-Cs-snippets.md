
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusinesses = await graphClient.BookingBusinesses
	.Request()
	.GetAsync();

```