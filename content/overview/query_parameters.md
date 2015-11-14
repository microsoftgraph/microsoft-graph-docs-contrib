# Microsoft Graph optional query parameters
## Optional OData query parameters
Microsoft Graph provides several optional query parameters that you can use to specify and control the amount of data returned in a response. Microsoft Graph supports the following query options. 

|Name|Value|Description|
|:---------------|:--------|:-------|
|$select|string|Comma-separated list of properties to include in the response.|
|$expand|string|Comma-separated list of relationships to expand and include in the response.  |
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|
|$filter|string|Filters the response based on a set of criteria.|
|$top|int|The number of items to return in a result set.|
|$skip|int|The number of items to skip in a result set.|
|$skipToken|string|Paging token that is used to get the next set of results.|
|$count|none|The count of related entities.|


### $select
To specify a subset of properties to return, use the **$select** query option. For example, when retrieving your messages, you might want to select that only the **from** and **subject** properties of messages are returned.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

<!--For example, when retrieving the children of an item on a drive, you want to select that only the **name** and **size** properties of items are returned.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root/children?$select=name,size
```

By submitting the request with the `$select=name,size` query string, the objects
in the response will only have those property values included. 


```json
{
  "value": [
    {
      "id": "13140a9sd9aba",
      "name": "Documents",
      "size": 1024
    },
    {
      "id": "123901909124a",
      "name": "Pictures",
      "size": 1012010210
    }
  ]
}
```--> 

### $expand

In Microsoft Graph API requests, children collections of referenced items are not automatically expanded. This is by design because it reduces network traffic and the time it takes to generate a response from the service. However, in some cases you might want to include those results
in a response.

You can use the **$expand** query string parameter to instruct the API to expand a children collection and include those results.

For example, to retrieve the root drive information and the top level items in a drive, you use the **$expand** parameter. This example also uses a **$select** statement to only return the _id_ and _name_ properties of the children items.


```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

The request returns the collection items, with the children collection expanded.

>  **Note**: The maximum number of returned objects for a request is 20.


<!---The following shows a sample result that is returned in the response body.-->


### $orderby

To specify the sort order of the items returned from the API, use the **$orderby** query option. 
To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space, for example,
`?orderby=name%20desc`.

For example, to return the users in the organization ordered by their display name, the syntax is as follows:

```http
GET https://graph.microsoft.com/v1.0/users?$orderBy=displayName
``` 
 >  **Note**: **$orderby** cannot be combined with $filter expressions.

### $filter
To filter the response data based on a set of criteria, use the **$filter** query option.
For example, to return users in the organization filter by display name that starts with "Garth", the syntax is as follows.

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'Garth')
```

### $top
To specify the maximum number of items to return in a result set, use the **$top** query option. The **$top** query option identifies a subset in the collection. This subset is formed by selecting only the first N items of the set, where N is a positive integer specified by this query option. 
For example, to return the first five messages in the user's mailbox, the syntax is as follows:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$top=5
```

### $skip
To set the number of items to skip before retrieving items in a collection, use  the **$skip** query option. 
For example, to return events sorted by date created, and starting with the 21st event, the syntax is as follows.

```http
GET  https://graph.microsoft.com/v1.0/me?$orderby=createdDateTime&$skip=20
```

### $skipToken
To page and specify the next set of results to return, use  the **$skipToken** query option.  The value of a **$skipToken** query option is a token that identifies a starting point in a collection. For example, the value of a **$skipToken** query option could identify the first item in a collection or the 8th item in a collection containing 20 items, or any other position within the collection.

Since the value of a **$skipToken** query option identifies an index into a collection, using it in your query identifies a subset of the items. The subset identified starts from the first item at the index (identified by the value of the **$skipToken** query option) through the last item in the  set.

In some response, you'll see an `@odata.nextLink` value. Some of them include a **$skipToken** value.  The **$skipToken** value is like a marker that tells the service where to resume for the next set of results.  The following is an example of a `@odata.nextLink` value from a response.

```
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$orderby=displayName&$top=3&$skiptoken=X%2783630372100000000000000000000%27"
```

For example, to return the next set of users in your organization, limiting the number to 3 at a time in the results, the syntax is as follows.

```http
GET  https://graph.microsoft.com/v1.0/users?$orderby=displayName&$top=3&$skiptoken=X%2783630372100000000000000000000%27
```

### $count
The count of related entities can be requested by specifying the **$count** query option.  The **$count** query option returns the number of items in a collection or if the collection has a filter, the number of items matching the filter.

For example, to get the number or size of your contacts, the syntax is as follows.

```http
GET  https://graph.microsoft.com/v1.0/me/contacts?$count
```
