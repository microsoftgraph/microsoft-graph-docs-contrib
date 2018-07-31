# user: delta

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get newly created, updated, or deleted users without having to perform a full read of the entire user collection. See [Track changes](../../../concepts/delta_query_overview.md) for details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | User.Read, User.ReadWrite    |
|Application | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

## HTTP request

To begin tracking changes, you make a request including the delta function on the users resource.

<!-- { "blockType": "ignored" } -->
```http
GET /users/delta
```

## Query parameters

Tracking changes in users incurs a round of one or more **delta** function calls. If you use any query parameter
(other than `$deltatoken` and `$skiptoken`), you must specify
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters
into the token portion of the `nextLink` or `deltaLink` URL provided in the response.
You only need to specify any desired query parameters once upfront.
In subsequent requests, copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already
includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `deltaLink` URL of the previous **delta** function call for the same user collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](../../../concepts/delta_query_overview.md) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same user collection. |

### OData query parameters
This method supports optional OData query parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The *id* property is always returned.

- There is limited support for `$filter`:
  * The only supported `$filter` expression is for tracking changes on one or two specific users:  `$filter=id+eq+{value}` or `$filter=id+eq+{value1}+or+id+eq+{value2}`

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;|
| Content-Type  | application/json |
| Prefer | return=minimal <br><br>When specified, only the object properties whose values have changed are included in the response. See [this section](#properties-included-in-the-response) for more details. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and [user](../resources/user.md) collection object in the response body. The response also includes a nextLink URL or a deltaLink URL.

- If a `nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

- If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.

### Properties included in the response

Responses for `nextLink` always include all the properties of the object - the default set, or the set specified in the optional `$select` query parameter. This allows you to capture the full current state of the objects when initiating the delta cycle.

By default, responses for `deltaLink` include all originally selected properties, whether they have changed or not, and their current values. Optionally, you can request that only the changed properties be included.

#### Default: all properties included
All properties selected in the initial delta query are always returned in the Json response, even if their values have not changed.

For example, an initial request selected 3 properties for change tracking:
```http
GET https://graph.microsoft.com/beta/users/delta?$select=displayName,jobTitle,mobilePhone
```

A response to a subsequent delta query may look like this:
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "jobTitle": "jobTitle-value",
      "mobilePhone": null
    }
  ]
}
```

#### Alternative: only changed properties included
Adding an optional request header - `prefer:return=minimal` - ensures that only the properties whose values have changed since the last delta sync are included in the Json respnose.

> **Note:** The header can be added to a `deltaLink` request at any point in time in the delta cycle. The header only affects the set of properties included in the response and it does not affect how the delta query is executed.


For example, an initial request selected 3 properties for change tracking:
```http
GET https://graph.microsoft.com/beta/users/delta?$select=displayName,jobTitle,mobilePhone
```

A response to a subsequent delta query, which specified the `prefer:return=minimal` request header, may look like this:
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "mobilePhone": null
    }
  ]
}
```
Note that the *jobTitle* property is not included, which means it has not changed since the last delta query. *displayName* and *mobilePhone* are included which means their values have changed.

See:<br>
- [Using Delta Query](../../../concepts/delta_query_overview.md) for more details<br>
- [Get incremental changes for users](../../../concepts/delta_query_users.md) for an example requests.<br>

## Example
#### Request
<!-- {
  "blockType": "request",
  "name": "user_delta"
}-->
```http
GET https://graph.microsoft.com/beta/users/delta
```

#### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "businessPhones": [
          "businessPhones-value"
      ],
      "displayName": "displayName-value",
      "givenName": "givenName-value",
      "jobTitle": "jobTitle-value",
      "mail": "mail-value",
      "mobilePhone": "mobilePhone-value",
      "officeLocation": "officeLocation-value",
      "preferredLanguage": "preferredLanguage-value",
      "surname": "surname-value",
      "userPrincipalName": "userPrincipalName-value",
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
