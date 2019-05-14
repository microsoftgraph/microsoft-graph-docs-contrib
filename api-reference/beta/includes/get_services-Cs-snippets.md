
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var services = await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services
	.Request()
	.GetAsync();

```