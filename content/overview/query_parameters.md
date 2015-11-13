# Microsoft Graph API optional query parameters
## Optional OData query parameters
Microsoft Graph provides several optional query parameters that you can use to specify and control the amount of data returned in a response. Microsoft Graph supports the following query options. 

|Name|Value|Description|
|:---------------|:--------|:-------|
|$count|none|The count of related entities.|
|$expand|string|Comma-separated list of relationships to expand and include in the response.  |
|$filter|string|Filters the response based on a set of criteria.|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|
|$select|string|Comma-separated list of properties to include in the response.|
|$skip|int|The number of items to skip in a result set.|
|$skipToken|string|Paging token that is used to get the next set of results.|
|$top|int|The number of items to return in a result set.|


### $select
You can use the **$select** query string parameter to provide a comma-separated
list of properties to return.  For example, when retrieving your messages, you might want to select that only the **from** and **subject** properties of messages are returned.

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

###$expand

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

You can use the **$orderby** query string to control the sort order of the items returned from the API. 
To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space, for example,
`?orderby=name%20desc`.

For example, to return the contents of the root of a drive, ordered largest to smallest, the syntax is as follows.

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/root/children?orderby=size%20desc
``` 
 >  **Note**: **$orderby** cannot be combined with $filter expressions.

### $filter
You use **$filter** to filter the response data based on a set of criteria.

### $top

### $skip

### $skipToken

### $count
The count of related entities can be requested by specifying the **$count** query option.
