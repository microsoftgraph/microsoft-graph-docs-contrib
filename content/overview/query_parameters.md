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
|$count|none|A collection and the number of items in the collection.|


**Encoding query parameters**

- If you are trying out query parameters in the [Microsoft Graph Explorer](https://graphexplorer2.azurewebsites.net/), you can just copy and paste the examples below without applying 
any URL-encoding to the query string. The following example works fine _in the Graph Explorer_ without encoding the space and quote characters:
```http
GET https://graph.microsoft.com/v1.0/me/messages?$filter=from/emailAddress/address eq 'jon@contoso.com'
``` 
- In general, when specifying query parameters _in your app_, make sure you appropriately encode characters that are [reserved for special meanings in an URI](https://tools.ietf.org/html/rfc3986#section-2.2).
For example, encode the space and quote characters in the last example, as shown below:
```http
GET https://graph.microsoft.com/v1.0/me/messages?$filter=from/emailAddress/address%20eq%20%27jon@contoso.com%27
```

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

In Microsoft Graph API requests, navigations to an object or collection of the referenced item are not automatically expanded. This is by design because it reduces network traffic and 
the time it takes to generate a response from the service. However, in some cases you might want to include those results in a response.

You can use the **$expand** query string parameter to instruct the API to expand a child object or collection and include those results.

For example, to retrieve the root drive information and the top level children items in a drive, you use the **$expand** parameter. This example also uses a **$select** statement to only 
return the _id_ and _name_ properties of the children items.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

>  **Note**: The maximum number of expanded objects for a request is 20. 

> Also, if you query on the [user](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/user) resource, you can use **$expand** to get the properties of only one child object 
or collection at a time. 

The following example gets **user** objects, each with up to 20 **directReport** objects in the **directReports** collection expanded:
```http
GET https://graph.microsoft.com/v1.0/users?$expand=directReports
```
Some other resources may have a limit as well, so always check for possible errors.


<!---The following shows a sample result that is returned in the response body.-->


### $orderby

To specify the sort order of the items returned from the API, use the **$orderby** query option. 

For example, to return the users in the organization ordered by their display name, the syntax is as follows:

```http
GET https://graph.microsoft.com/v1.0/users?$orderBy=displayName
``` 

You can also sort by complex type entities. The following example gets messages and sorts them by the **address** field of the **from** property, which is of the complext type **emailAddress**:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$orderBy=from/emailAddress/address
``` 

To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space, for example,
`?orderby=name%20desc`.

 >  **Note**: **$orderby** can't be combined with $filter expressions.

### $filter
To filter the response data based on a set of criteria, use the **$filter** query option.
For example, to return users in the organization filter by display name that starts with "Garth", the syntax is as follows.

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'Garth')
```

You can also filter by complex type entities. The following example returns messages that has the **address** field of the **from** property equal to "jon@contoso.com". The **from** 
property is of the complex type **emailAddress**.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$filter=from/emailAddress/address eq 'jon@contoso.com'
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
Use **$count** as a query parameter as in the following example:
```http
GET  https://graph.microsoft.com/v1.0/me/contacts?$count=true
```
which would return both the **contacts** collection, and the number of items in the **contacts** collection in the `@odata.id` property.

Note: This is not supported for [directoryObject](http://graph.microsoft.io/en-us/docs/api-reference/v1.0/resources/directoryobject) collections.
