# Use query parameters to customize responses

Microsoft Graph provides optional query parameters that you can use to specify and control the amount of data returned in a response. The following query parameters are supported.

|Name|Description|Example (click examples to try in [Graph Explorer][graph-explorer])
|:---------------|:--------|:-------|
|[$count](#count)|Retrieves the total count of matching resources.|[`/me/messages?$top=2&$count=true`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$top=2%26$count=true&method=GET&version=v1.0)
|[$expand](#expand)|Retrieves related resources.|[`/groups/{id}?$expand=members`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups/22be6ccb-15a5-459f-94ac-d1393bdd9e66?$expand=members&method=GET&version=v1.0)
|[$filter](#filter)|Filters results (rows).|[`/users?$filter=startswith(givenName,'J')`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0)
|[$orderby](#orderby)|Orders results.|[`/users?$orderby=displayName,userPrincipalName desc`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$orderby=displayName,userPrincipalName%20DESC&method=GET&version=v1.0)
|[$search](#search)| Returns results based on search criteria. Currently supported on `messages` and `person` collections.|[`/me/messages?$search=pizza`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$search=pizza&method=GET&version=v1.0)
|[$select](#select)|Filters properties (columns).|[`/users?$select=givenName,surname`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$select=givenName,surname&method=GET&version=v1.0)
|[$skip](#skip)|Indexes into a result set. Also used by some APIs to implement paging and can be used together with `$top` to manually page results.  | [`/me/messages?$skip=11`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$skip=11&method=GET&version=v1.0)
|[$skipToken](#skiptoken)|Retrieves the next page of results from result sets that span multiple pages. (Some APIs use `$skip` instead.) | `https://graph.microsoft.com/v1.0/users?$skiptoken=X%274453707402000100000017 ... 65612D643839392D343230372D613033662D306332623836633432363932B900000000000000000000%27`
|[$top](#top)|Sets the page size of results. |[`/users?$top=2`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$top=2&method=GET&version=v1.0)
<!-- TODO: figure out whether $search is actually used
|[`$search`](#search)|A property and value pair separated by a colon.|
-->

These parameters are compatible with the [OData V4 query language][odata-query]. Not all parameters are supported across all Microsoft Graph APIs and support may differ significantly between the `v1.0` and `beta` endpoints. 

> **Note:** On the `beta` endpoint, the `$` prefix is optional. For example, instead of `$filter`, you can use `filter`. For more details and examples, see [Supporting query parameters without $ prefixes in Microsoft Graph](http://dev.office.com/queryparametersinMicrosoftGraph).

**Encoding query parameters:**

The values of query parameters should be percent-encoded. Many HTTP clients, browsers and tools (e.g., the [Graph Explorer][graph-explorer]) will help you with this. If a query is failing, one possible reason is failure to encode the values of query parameters appropriately.

An unencoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName, 'J')
```

A properly encoded URL looks like this:

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName%2C+'J')
```

## count

Use `$count` as a query parameter to include a count of the total number of items in a collection alongside the page of data values returned from the Graph, as in the following example:

```http
GET  https://graph.microsoft.com/v1.0/me/contacts?$count=true
```
This request will return both the `contacts` collection, and the number of items in the `contacts` collection in the `@odata.count` property.

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/contacts?$count=true&method=GET&version=v1.0)


>**Note:** `$count` is not supported for [`directoryObject`](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/directoryobject) collections.

## expand

Many Microsoft Graph resources expose both declared properties of the resource as well as its relationships with other resources. These relationships are also called reference properties or navigation properties and they can reference either a single resource or a collection of resources. For example, the mailboxes, manager, and direct reports of a user are all exposed as relationships. 

Normally, you can query either the properties of a resource or one of its relationships in a single request, but not both. You can use the `$expand` query string parameter to include the expanded resource or collection referenced by a single relationship (navigation property) in your results. The maximum number of expanded objects for a request is 20.  

The following example gets `user` objects, each with up to 20 `directReport` objects in the `directReports` collection expanded:

```http
GET https://graph.microsoft.com/beta/users?$expand=directReports
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$expand=directReports&method=GET&version=beta)

With some resource collections, you can also specify the properties to be returned in the expanded resources by adding a `$select` parameter. The following example retrieves the root drive information and the top level child items in a drive. This example also uses a [`$select`](#select) statement to limit the properties returned for the expanded child items to the `id` and `name` properties.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/drive/root?$expand=children($select=id,name)&method=GET&version=v1.0)

> **Note**: Not all relationships support the $expand query parameter. You cannot use `$expand` on relationships that span multiple services. For example you cannot expand messages (`$expand=messages`) on a user resource because `user` is sourced from Azure Active Directory while `message` is sourced from Microsoft Outlook. Even relationships sourced from the same underlying service as the resource may not be supported. For example, user and group photos cannot be expanded. You can check the Microsoft Graph metadata to help understand which relationships do not support `$exapnd`; for more information, see [Determining support for query parameters](#determining-support-for-query-parameters).
>
>
<!--
In Microsoft Graph requests, navigations to an object or collection of the referenced item are not automatically expanded.
This is by design because it reduces network traffic and the time it takes to generate a response from the service.
However, in some cases you might want to include those results in a response.

You can use the `$expand` query string parameter to instruct Microsoft Graph to expand a child object or collection and include those results.

For example, to retrieve the root drive information and the top level child items in a drive, you use the `$expand` parameter.
This example also uses a [`$select`](#select) statement to only return the `id` and `name` properties of the children items.

```http
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/drive/root?$expand=children($select=id,name)&method=GET&version=v1.0)

> **Note:** The maximum number of expanded objects for a request is 20. Also, if you query on the [`user`](http://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user) resource, you can use `$expand` to get the properties of only one child object or collection at a time.
The following example gets `user` objects, each with up to 20 `directReport` objects in the `directReports` collection expanded:

```http
GET https://graph.microsoft.com/beta/users?$expand=directReports
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$expand=directReports&method=GET&version=beta)

Some other resources may have a limit as well, so always check for possible errors.

-->

## filter

`$filter` can be used to retrieve just a subset of a collection. For example, to find users whose display name starts with `J`, use `startswith`.

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0)

**Request:**

```http
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(displayName,'J')
```

<!--
**Response:**

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users",
    "value": [
        {
            "id": "e013b9f3-a1ab-48d1-907b-e716c39d6363",
            "businessPhones": [
                "4255550100"
            ],
            "displayName": "Jan Madden",
            "givenName": "Jan",
            "jobTitle": null,
            "mail": "demo32@a830edad9050849NDA1.onmicrosoft.com",
            "mobilePhone": null,
            "officeLocation": null,
            "preferredLanguage": null,
            "surname": "Madden",
            "userPrincipalName": "demo32@a830edad9050849NDA1.onmicrosoft.com"
        },
        {
            "id": "89efe8ed-d141-4151-a3e4-570a70022dff",
            "businessPhones": [
                "+1 425 555 0109"
            ],
            "displayName": "Janet Schorr",
            "givenName": "Janet",
            "jobTitle": "Product Marketing Manager",
            "mail": "janets@a830edad9050849NDA1.onmicrosoft.com",
            "mobilePhone": null,
            "officeLocation": "18/2111",
            "preferredLanguage": null,
            "surname": "Schorr",
            "userPrincipalName": "janets@a830edad9050849NDA1.onmicrosoft.com"
        },
        ...
    ]
}
```
-->

`$filter` has a very rich and expressive syntax with many built-in operators. Logical operators include equals (`eq`), not equals (`ne`), greater than (`gt`), greater than or equals (`gte`), and (`and`), or (`or`), not (`not`) etc. Arithmetic operators include add (`add`), subtract (`sub`), etc. String operators include contains (`contains`), starts with (`startswith`), etc. Lambda operators include any (`any`) and all (`all`). For additional details on `$filter` syntax, see the [OData protocol][odata-filter].

The following table shows some examples using the `$filter` query parameter.

|Description|Example (click examples to try in [Graph Explorer][graph-explorer])|
|:--------|:-------|
| Get all of the signed-in user's events that start after 7/1/2017. | [`/v1.0/me/events?$filter=start/dateTime ge '2017-07-01T08:00'&$count=true`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/events?$filter=start/dateTime+ge+'2017-07-01T08:00'%26$count=true&method=GET&version=v1.0) |
| Get all emails from a specific address received by the signed-in user. | [`https://graph.microsoft.com/v1.0/me/messages?$filter=from/emailAddress/address eq 'jimaco44@msn.com'&$count=true`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$filter=from/emailAddress/address+eq+'jimaco44@msn.com'%26$count=true&method=GET&version=v1.0) |
| Get all emails received by the signed-in user in April 2017 | [`https://graph.microsoft.com/v1.0/me/mailFolders/inbox/messages?$filter=ReceivedDateTime ge 2017-04-01 and receivedDateTime lt 2017-05-01`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=ReceivedDateTime+ge+2017-04-01+and+receivedDateTime+lt+2017-05-01&method=GET&version=v1.0) |
| Get all unread mails in the signed-in user's Inbox. | [`https://graph.microsoft.com/v1.0/me/mailFolders/inbox/messages?$filter=isRead eq false`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=isRead+eq+false&method=GET&version=v1.0) |
| List all Office 365 groups in an organization | [`https://graph.microsoft.com/v1.0/groups?$filter=groupTypes/any(c:c+eq+'Unified')`](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups?$filter=groupTypes/any(c:c+eq+'Unified')&method=GET&version=v1.0) |


## orderby

To specify the sort order of the items returned from Microsoft Graph, use the `$orderby` query parameter.

For example, the following request returns the users in the organization ordered by their display name:

```http
GET https://graph.microsoft.com/v1.0/users?$orderby=displayName
```
[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users?$orderby=displayName&method=GET&version=v1.0)

You can also sort by complex type entities. The following request gets messages and sorts them by the `address` field of the `from` property, which is of the complex type `emailAddress`:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$orderby=from/emailAddress/address
```
[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$orderby=from/emailAddress/address&method=GET&version=v1.0)

To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space, for example, `?$orderby=name%20desc`.

 > **Note:** If you query on the [`user`](../api-reference/v1.0/resources/user.md) resource, `$orderby` can't be combined with filter expressions.

## search

To restrict the results of a request that match a search criterion, use the `$search` query parameter.

> **Note:** You can currently **only** search [message](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/message) and [person](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/person) collections. A `$search` request returns up to 250 results. You cannot use [`$filter`](#filter) or [`$orderby`](#orderby) in a search request.

### Search on `message`

Search criteria are expressed using [Advanced Query Syntax (AQS)](https://support.office.com/article/Search-Mail-and-People-in-Outlook-com-and-Outlook-on-the-web-for-business-88108edf-028e-4306-b87e-7400bbb40aa7). The results are sorted by the date and time that the message was sent.

You can specify the following properties on a `message` in a `$search` criterion:
`attachments`, `bccRecipients`, `body`, `category`, `ccRecipients`, `content`, `from`, `hasAttachments`, `participants`, `receivedDateTime`, `sender`, `subject`, `toRecipients`

If you do a search on messages and specify only a value, the search is carried out on the default search properties of `from`, `subject` and `body`.

The following example returns all messages in the signed-in user's Inbox that contains "pizza" in any of the three default search properties:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="pizza"
```

The next example searches all messages in the user's Inbox that were sent from a specific email address:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="from:help@contoso.com"
```

### Search on `person`

Searches on people occur on both the `displayName` and `emailAddress` properties. Searches implement a fuzzy matching algorithm. They will return results based on an exact match and also on inferences about the intent of the search. For example, imagine a user with a display name of "Tyler Lee" and an email address of tylerle@example.com who is in the `people` collection of the signed-in user. All of the following searches will return results that contain that user.

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search=tyler                //matches Tyler's name and email
GET https://graph.microsoft.com/v1.0/me/messages?$search=tylerle              //matches Tyler's email
GET https://graph.microsoft.com/v1.0/me/messages?$search=tylerle@example.com  //matches Tyler's email
GET https://graph.microsoft.com/v1.0/me/messages?$search=tiler                //fuzzy match with Tyler's name 
GET https://graph.microsoft.com/v1.0/me/messages?$search="tyler lee"          //matches Tyler's name note the quotes to enclose the space.
```

## select

Use the `$select` query parameter to return a set of properties different than the default set for an individual resource or a collection of resources. With $select you can specify a subset or a superset of the default properties.

For example, when retrieving the messages of the signed-in user, you can specify that only the `from` and `subject` properties be returned:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$select=from,subject&method=GET&version=v1.0)

 > **Important:** In general, we recommend that you use $select to limit the properties returned by a query to those needed by your app. This is especially true of queries that may potentially return a large result set. Limiting the properties returned in each row will reduce network load and help improve your app's performance.

<!--For example, when retrieving the children of an item on a drive, you want to select that only the `name` and `size` properties of items are returned.

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

## skip

To set the number of items to skip at the start of a collection, use the `$skip` query parameter.
For example, the following request returns events for the user sorted by date created, starting with the 21st event in the collection:

```http
GET  https://graph.microsoft.com/v1.0/me/events?$orderby=createdDateTime&$skip=20
```
[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/events?$orderby=createdDateTime&$skip=20&method=GET&version=v1.0)

## skipToken

Some requests return multiple pages of data either due to server-side paging or due to the use of the `top` parameter to limit the page size in a request. Many Microsoft Graph APIs use the `skipToken` parameter to reference subsequent pages of the result. This parameter is returned in the URL provided in the `@odata.nextLink` property in the response. 

For example, the following requests all of the users in an organization ordered by the `displayName` property:

```html
https://graph.microsoft.com/v1.0/users?$orderby=displayName
```

If the result spans multiple pages, Microsoft Graph will return an `odata:nextLink` property similar to the following along with the first page of users.

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$orderby=displayName&$skiptoken=X%2783630372100000000000000000000%27"
```

You can retrieve the next page of results by sending the URL value (which includes the `skipToken` parameter). 

```html
https://graph.microsoft.com/v1.0/users?$orderby=displayName&$skiptoken=X%2783630372100000000000000000000%27
```

Microsoft Graph will continure to return an `odata:nextLink` property for each request until all pages have been read. For more information, see [Get data in pages](./paging.md). 

## top

To specify the page size of the result set, use the `$top` query parameter. 

If there are more items remaining in the result set, the response body will contain an `@odata.nextLink` parameter. This parameter contains a URL that you can use to get the next page of results. Typically this URL contains a `$skipToken` parameter that references the next page of results; however, some Microsoft Graph APIs, return a URL that contains a `$skip` parameter to index into the result set for the next page of results. For more information, see [Get data in pages](./paging.md). 

<!--`The `$top` query parameter limits the results returned to the first N items in the result set, where N is a positive integer. 
The `$top` query parameter identifies a subset in the collection. This subset is formed by selecting only the first N items of the set, where N is a positive integer specified by this query parameter. -->
For example, the following request returns the first five messages in the user's mailbox:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$top=5
```

Assuming that the signed-in user has more than five messages in their inbox, the response body will also contain the following `@odata.nextLink` parameter:

```http
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$top=5&$skip=5"
```

[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me/messages?$top=5&method=GET&version=v1.0)

## Error handling for query parameters

Some requests will return an error message if a specified query parameter is not supported. For example, you cannot use `$expand` on the `user/photo` relationship. 

```http
https://graph.microsoft.com/beta/me?$expand=photo
```

```json
{
    "error":{
        "code":"ExpandNotSupported",
        "message":"Expand is not allowed for property 'Photo' according to the entity schema.",
        "innerError":{
            "request-id":"1653fefd-bc31-484b-bb10-8dc33cb853ec",
            "date":"2017-07-31T20:55:01"
        }
    }
}
```

However, it is important to note that query parameters specified in a request may fail silently. This can be true for unsupported query parameters as well as for unsupported combinations of query parameters. In these cases, you should examine the data returned by the request to determine whether the query parameters you specified had the desired effect. 

## Determining support for query parameters

Not all query parameters are supported across all Microsoft Graph resources. You can check the Microsoft Graph metadata endpoints ([v1.0](https://graph.microsoft.com/v1.0/$metadata) or [beta](https://graph.microsoft.com/beta/$metadata)) to help determine whether specific query parameters are supported on a resource or its relationships. Query parameter support is listed in annotations on the metadata. Be aware that, even if support for a specific query parameter on a resource or a relationship is indicated, there may still be limitations in the way that it is supported and in the way that it can be used in combination with other query parameters. 

Here is an example of an annotation for the malwareRiskEvent resource on the beta endpoint. 

```xml
<Annotations Target="microsoft.graph.malwareRiskEvent">
  <Annotation Term="Org.OData.Capabilities.V1.ExpandRestrictions">
    <Record>
      <PropertyValue Property="Expandable" Bool="true"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.NavigationRestrictions">
    <Record>
      <PropertyValue Property="Referenceable" Bool="true"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.SelectRestrictions">
    <Record>
      <PropertyValue Property="Selectable" Bool="true"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.CountRestrictions">
    <Record>
      <PropertyValue Property="Countable" Bool="true"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.FilterRestrictions">
    <Record>
      <PropertyValue Property="Filterable" Bool="true"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.TopSupported" Bool="true"/>
  <Annotation Term="Org.OData.Capabilities.V1.SkipSupported" Bool="true"/>
</Annotations>
```

Some relationships and resources only document unsupported query parameters. For example here are the annotations for the user/messages relationship. The `$expand` parameter is not supported, all other query parameters are.

```xml
<Annotations Target="microsoft.graph.user/messages">
  <Annotation Term="Org.OData.Capabilities.V1.ChangeTracking">
    <Record>
      <PropertyValue Property="Supported" Bool="false"/>
    </Record>
  </Annotation>
  <Annotation Term="Org.OData.Capabilities.V1.ExpandRestrictions">
    <Record>
      <PropertyValue Property="Expandable" Bool="false"/>
    </Record>
  </Annotation>
</Annotations>

```

[graph-explorer]: https://graph.microsoft.io/en-us/graph-explorer
[odata-filter]: http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752358
[odata-query]: http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356
