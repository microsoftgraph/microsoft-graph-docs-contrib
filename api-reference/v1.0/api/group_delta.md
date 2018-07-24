# group: delta
[Delta query](../../../concepts/delta_query_overview.md) enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. To discover changes to groups, perform a request using the *delta* function. See [Using Delta Query](../../../concepts/delta_query_overview.md) for details.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Read.All, Group.ReadWrite.All |

## HTTP request
To begin tracking changes, you make a request including the delta function on the groups resource.

<!-- { "blockType": "ignored" } -->
```http
GET /groups/delta
```

## Query parameters
Tracking changes in groups incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `nextLink` or `deltaLink` URL provided in the response.

You only need to specify any desired query parameters once upfront.

In subsequent requests, copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `deltaLink` URL of the previous **delta** function call for the same group collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same group collection. |

### OData query parameters
This method supports optional OData query parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The
*id* property is always returned.
- You can use `$expand=members` to get membership changes.
- There is limited support for `$filter`:
  * The only supported `$filter` expression is for tracking changes on a specific object: `$filter=id+eq+{value}`. You can filter multiple objects. For example, `https://graph.microsoft.com/v1.0/groups/delta/?$filter= id eq '477e9fc6-5de7-4406-bb2a-7e5c83c9ffff' or id eq '004d6a07-fe70-4b92-add5-e6e37b8affff`. There is a limit of 50 filtered objects.

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |
| Prefer | return=minimal <br><br>When specified, only the object properties whose values have changed are included in the response. See [this section](#properties-included-in-the-response) for more details. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `200 OK` response code and [group](../resources/group.md) collection object in the response body. The response also includes a state token which is either a nextLink URL or a deltaLink URL.

- If a `nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

- If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.

### Properties included in the response

Responses for `nextLink` always include all the properties of the object - the default set, or the set specified in the optional `$select` query parameter. This allows you to capture the full current state of the objects when initiating the delta cycle.

Responses for `deltaLink` include values for only the properties that have changed since the time the `deltaLink` was issued. There are two behaviors you can choose from:

#### Default: all properties included
By default, all properties selected in the initial delta query are always returned in the Json response, with the following behavior:

- If the property has changed, the value of the property is included.
  - Note that if the property has changed and has been set to an empty value, the *null* value is returned.

- If the property has not changed, the value is returned as *null*.

> **Note:** With this behavior it is not possible to differentiate between a property that has not changed and one that has changed to a *null* value. If this is important, we recommend using the alternative behavior described in the next section.


For example, an initial request selected 3 properties for change tracking:
```http
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,mailNickname
```

A response to a subsequent delta query may look like this:
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "description": null,
      "mailNickname": null
    }
  ]
}
```
Note that *description* and *mailNickname* have the value of *null* which means that they may have not changed or have been set to an empty value.

#### Alternative: only changed properties included
Adding an optional request header - `prefer:return=minimal` - changes the default behavior to the following:

- If the property has changed, the property is included in the Json response. If the property has been set to an empty value, the value returned is *null*.

- If the property has not changed, it will be omitted from the Json response.

> **Note:** The header can be added to a `deltaLink` request at any point in time in the delta cycle. The header only affects the set of properties included in the response and it does not affect how the delta query is executed.


For example, an initial request selected 3 properties for change tracking:
```http
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,mailNickname
```

A response to a subsequent delta query, which specified the `prefer:return=minimal` request header, may look like this:
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "description": null
    }
  ]
}
```
Note that the *mailNickname* property is not included, which means it has not changed since the last delta query. The *description* property is included with a *null* value, which means it has changed and set to an empty value.

See:<br>
- [Using Delta Query](../../../concepts/delta_query_overview.md) for more details.<br>
- [Get incremental changes for groups](../../../concepts/delta_query_groups.md) for a more detailed walkthrough.<br>

## Example
#### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "group_delta"
}-->
```http
GET https://graph.microsoft.com/v1.0/groups/delta
```

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
>
> Note the presence of the *members@delta* property which includes the ids of member objects in the group.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups","@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvY1FSSc_",
  "value":[
    {
      "classification": "classification-value",
      "createdDateTime":"datetime-value",
      "description":"Test group 1",
      "displayName":"TestGroup1",
      "groupTypes": [
        "groupTypes-value"
      ],
      "mail": "mail-value",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "693acd06-2877-4339-8ade-b704261fe7a0"
               },
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "49320844-be99-4164-8167-87ff5d047ace"
               }
      ]
    }
  ]
}
```

## See also
- [Using Delta Query](../../../concepts/delta_query_overview.md) for more details.
- [Get incremental changes for groups](../../../concepts/delta_query_groups.md) for a more detailed walkthrough.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
