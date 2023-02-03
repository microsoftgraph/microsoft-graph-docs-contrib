<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/me/calendarView

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
    start_date_time='2020-12-01T00:00:00Z',
    end_date_time='2020-12-30T00:00:00Z',
)

request_config = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
    query_parameters=query_params,
)

calendar = asyncio.run(client.me
                       .calendar_view
                       .get(request_configuration=request_config))
```
