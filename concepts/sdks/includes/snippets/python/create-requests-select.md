<!-- markdownlint-disable MD041 -->

```python
# GET https://graph.microsoft.com/v1.0/me?$select=displayName,jobTitle

query_params = MeRequestBuilder.MeRequestBuilderGetQueryParameters(
    select=['displayName', 'jobTitle']
)

request_config = MeRequestBuilder.MeRequestBuilderGetRequestConfiguration(
    query_parameters=query_params,
)

user = asyncio.run(client.me
                   .get(request_configuration=request_config))
```
