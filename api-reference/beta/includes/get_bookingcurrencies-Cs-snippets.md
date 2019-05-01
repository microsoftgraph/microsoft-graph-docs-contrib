
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCurrency = await graphClient.BookingCurrencies
	.Request()
	.GetAsync();

```