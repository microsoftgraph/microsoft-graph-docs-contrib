
# Paging Microsoft Graph data in your app 

Some queries against Microsoft Graph return multiple pages of data either due to server-side paging or due to the use of the `$top` query parameter to specifically limit the page size in a request. When a result set spans multiple pages, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results. 

For example, the following URL requests all of the users in an organization with a page size of 5 specified with the `$top` query parameter:

```html
https://graph.microsoft.com/v1.0/users?$top=5
```

If the result contains more than 5 users, Microsoft Graph will return an `odata:nextLink` property similar to the following along with the first page of users.

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=X%274453707 ... 6633B900000000000000000000%27"
```

You can retrieve the next page of results by sending the URL value of the `@odata:nextLink` property to Microsoft Graph. 

```html
https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=X%274453707 ... 6633B900000000000000000000%27
```

Microsoft Graph will continue to return a reference to the next page of data in the `@odata:nextLink` property with each response until all pages of the result have been read.

Depending on the API that the query is being performed against, the `@odata:nextLink` URL value will contain either a `$skiptoken` or a `$skip` query parameter. The `$skiptoken` parameter contains an opaque token that references the next page of results, while the `$skip` parameter contains an integer index into the next page of results. To learn more, see [Use query parameters](./query_parameters.md). 

The following example, shows an `odata:nextLink` property that contains a `$skip` parameter rather than a `$skiptoken` parameter in the URL:

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$top=5&$skip=5"
```


>**Important:** You should include the entire URL in the `@odata:nextLink` property in your request for the next page of results. The URL contains all of the query parameters present in the original request. Do not try to extract the `$skiptoken` or `$skip` value and use it in a different request. 

Paging behavior varies across different Microsoft Graph APIs. You should consider the following when working with paged data:

- Different APIs may have different default and maximum page sizes.
- Different APIs may behave differently if you specify a page size (via the `$top` query parameter) that exceeds the maximum page size for that API. Depending on the API, the requested page size may be ignored, it may default to the maximum page size for that API, or Microsoft Graph may return an error. 
- Not all resources or relationships support paging. For example, queries against [directoryRoles](../api-reference/v1.0/resources/directoryrole) do not support paging. This includes reading role objects themselves as well as role members.
- Some Microsoft Graph APIs support backward paging by appending the `previous-page` query parameter (`&previous-page=true`) to the URL value of the `@odata:nextLink` property. Once you append this parameter to a request, the `@odata:nextLink` URL value in subsequent responses will include it. You can continue to page backward until a response with an empty result is returned. Paging further will return an error. Alternatively, you can resume paging forward from the current response by removing the `previous-page` parameter when you send the request for the next page of results. 

