# Get incremental changes for users (preview)

[Delta query](./delta_query_overview.md) lets you query for additions, deletions, or updates to users, by way of a series of [delta](../api-reference/beta/api/user_delta.md) function calls. Delta query enables you discover changes to users without having to fetch the entire set of users from Microsoft Graph and compare changes.

Delta query supports both full synchronization that retrieves all of the users in a tenant, and incremental synchronization that retrieves only the users that have changed since the last synchronization. Typically, you would do an initial full synchronization of all the users in a tenant, and subsequently, get incremental changes to users periodically. 

## Tracking user changes

Tracking user changes is a round of one or more GET requests with the **delta** function. You make a GET
request much like the way you [get users](../api-reference/beta/api/user_list.md), except that you include the following:

- The **delta** function.
- A [state token](./delta_query_overview.md#state-tokens-and-other-query-parameters-in-a-delta-query) (_deltaToken_ or _skipToken_) from the previous GET **delta** function call.

## Example

The following example shows a series  requests to track changes to users:

1. [Initial request](#initial-request) and [response](#initial-response)
2. [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. [Final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. [deltaLink request](#deltalink-request)

## Initial request

To begin tracking changes in the user resource, you make a request including the delta function on the user resource. 

Note the following:

- The optional $select query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The initial request does not include a state token. State tokens will be used in subsequent requests.

``` http
GET https://graph.microsoft.com/beta/users/delta?$select=displayName,description
```

### Initial response

If successful, this method returns `200, OK` response code and [user](./resources/user.md) collection object in the response body. Anticipate that the initial response contains all the entire collection of users. The response will also include a state token which is either a nextLink URL or a deltaLink URL.

In this example, a nextLink URL is returned indicating there are additional pages of data to be retrieved in the session. The $select query parameter from the initial request is encoded into the nextLink URL.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 292

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ",
  "value": [
    {
      "displayName":"Testuser1",
      "description":"Employees in test user 1",
      "id":"c2f798fd-f95d-4623-8824-63aec21fffff"
    },
    {
      "displayName":"Testuser2",
      "description":"Employees in test user 2",
      "id":"ec22655c-8eb2-432a-b4ea-8b8a254bffff"
    }
  ]
}
```

## nextLink request

The second request specifies the `skipToken` returned from the previous response. Notice that it no longer has to specify the same `$select` parameter as in the initial request, as the `skipToken` encodes and includes it.

``` http
GET https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ
```

## nextLink response

The response contains a `nextLink` and another `skipToken`, indicating there are more users available. You continue making requests using the nextLink URL until a deltaLink URL is included in the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 292

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"Testuser3",
      "description":"Employees in test user 3",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957"
    },
    {
      "displayName":"Testuser4",
      "description":"Employees in test user 4",
      "id":"421e797f-9406-4934-b778-4908421e3505"
    }
  ]
}
```

## Final nextLink request

The third request continues to use the latest `skipToken` returned from the last sync request. 

``` http
GET https://graph.microsoft.com/beta/users/delta?$skiptoken=ppqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7
```

## Final nextLink response

When the deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource. Save the `deltaToken` and use it in the request URL to discover changes to users. 

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 292

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/beta/users/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
    {
      "displayName":"Testuser5",
      "description":"Employees in test user 5",
      "id":"bed7f0d4-750e-4e7e-ffff-169002d06fc9"
    },
    {
      "displayName":"Testuser6",
      "description":"Employees in test user 6",
      "id":"421e797f-9406-ffff-b778-4908421e3505"
    }
  ]
}
```

## deltaLink request

Using the `deltaToken` from the [last response](#final-nextlink-response), you will be able to get changed (by being added, deleted, or updated) users since the last request.

``` http
GET https://graph.microsoft.com/beta/users/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw
```

## See also
[Microsoft Graph delta query](../concepts/delta_query_overview.md) overview.