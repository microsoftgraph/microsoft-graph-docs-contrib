# Get incremental changes for groups

[Delta query](./delta_query_overview.md) enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. To discover changes to groups, perform a request using the *delta* function. See [Using Delta Query](./delta_query_overview.md#using-delta-query) for details.

## Prerequisites

[Permissions](../../authorization/permission_scopes.md) required to perform delta query for groups can be either of the following: *Group.Read.All* or *Group.ReadWrite.All*

## Initial request

To begin tracking changes in the group resource, you make a request including the delta function on the group resource. In this example, the optional $select query parameter is included in the request. 

```
http
GET https://graph.microsoft.com/beta/groups/delta?$select=displayName,description
Authorization: &lt;token&gt;
```

### Response

If successful, this method returns `200, OK` response code and [group](./resources/group.md) collection object in the response body. The response will also include a state token which is either a nextLink URL or a deltaLink URL.

In this example, a nextLink URL is returned indicating there are additional pages of data to be retrieved in the session. The query parameter is encoded into the nextLink URL.

```
http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 292

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/beta/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ",
  "value": [
    {
      "classification": "classification-value",
      "createdDateTime": "datetime-value",
      "description": "description-value",
      "displayName": "displayName-value",
      "groupTypes": [
        "groupTypes-value"
      ],
      "proxyAddresses": [
        "proxyAddresses-value"
      ],
      "renewedDateTime":"datetime-value",
      "securityEnabled":false,
      "theme":null,
      "visibility":"Public"
    }
  ]
}
```


## nextLink request

You continue making requests using the nextLink URL until a deltaLink URL is included in the response.

## deltaLink request

- If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.


     b.  If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.
     
3.  When the application needs to learn about changes to the resource, it makes a new request using the deltaLink URL received in step 2. This request *may* be made immediately after completing step 2 or when the application checks for changes.
4.  Microsoft Graph returns a response describing changes to the resource since the previous request and either a nextLink URL or a deltaLink URL.
See [Using Delta Query](./delta_query_overview.md#using-delta-query) for more details.
     
### Example
##### Request
<!-- {
  "blockType": "request",
  "name": "group_delta"
}-->
```http
GET https://graph.microsoft.com/beta/groups/delta
```

##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->