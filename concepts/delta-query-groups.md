---
title: "Get incremental changes for groups"
description: "Use delta query to discover changes without fetching the entire set of groups to compare changes. Example shows a series of requests to track changes to groups."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: "jumasure"
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 11/17/2022
---

# Get incremental changes for groups

The [delta query](./delta-query-overview.md) in Microsoft Graph lets you query for additions, deletions, or updates to [supported resources](delta-query-overview.md#supported-resources). It's enabled through a series of [delta](/graph/api/group-delta?) requests. For groups, the delta query enables you to discover changes without fetching the entire set of groups to compare changes.

Clients that synchronize groups with a local profile store can use the delta query for both their initial full synchronization along with subsequent incremental synchronizations. Typically, a client would do an initial full synchronization of all the groups in a tenant, and then, get incremental changes to groups periodically.

## Track changes to groups

Track groups changes through one or more GET requests with the **delta** function. The GET request is like a [list groups](/graph/api/group-list?) request, except with the following extra objects in the URL:

- The **delta** function.
- A [state token](./delta-query-overview.md) (_deltaToken_ or _skipToken_) from the previous GET **delta** function call.

## Example: track changes to groups

The following example shows a series of requests to track changes to groups:

1. An [initial request](#initial-request) and [response](#initial-response)
2. A [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. A [final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. A [deltaLink request](#deltalink-request) and [deltaLink response](#deltalink-response)

Take note of the following in the responses:

- When a group is deleted (Microsoft 365 groups), the item contains an annotation: `@removed` with value of `"reason": "changed"`.
- When the group is permanently deleted (a security group or [permanently deleting a Microsoft 365 group](/graph/api/directory-deleteditems-list)), the item contains  an annotation: `@removed` with value of `"reason": "deleted"`.
- When the group is created, or restored, there's no annotation.

### Initial request

To track changes in the group resource, make a request and include the **delta** function as a URL segment.

Take note of the following items:

- The optional `$select` query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The optional `$select` query parameter is also used to show how group members can be retrieved together with group objects. This allows tracking of membership changes, such as when users are added or removed from groups.
- The initial request doesn't include a state token. State tokens will be used in subsequent requests.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-groups-initial-request"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-groups-initial-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-groups-initial-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-groups-initial-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-groups-initial-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-groups-initial-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Initial response

If successful, this method returns `200 OK` response code and [group](/graph/api/resources/group) collection object in the response body. If the entire set of groups is too large to fit in one response, a `@odata.nextLink` containing a state token will also be included.

In this example, a `@odata.nextLink` was included; the original `$select` query parameter is encoded in the state token.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups(displayName,description)",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ",
  "value": [
    {
      "displayName":"All Company",
      "description":"This is the default group for everyone in the network",
      "id":"c2f798fd-f95d-4623-8824-63aec21fffff",
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
    },
    {
      "displayName":"sg-HR",
      "description":"All HR personnel",
      "id":"ec22655c-8eb2-432a-b4ea-8b8a254bffff"
    }
  ]
}
```

> [!NOTE]
> The `members@delta` property is included in the first group object - **All Company** - and contains the two current members of the group. **sg-HR** does not contain that property because the group does not have any members.

### nextLink request

The second request uses the `@odata.nextLink` from the previous response, which contains the `skipToken`. Notice the `$select` parameter isn't visibly present as it's encoded and included in the token.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-groups-nextlink-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-groups-nextlink-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-groups-nextlink-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-groups-nextlink-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-groups-nextlink-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-groups-nextlink-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### nextLink response

The response contains another `@odata.nextLink` with a new `skipToken` value, which indicates that more changes that were tracked for groups are available. Use the `@odata.nextLink` URL in more requests until a `@odata.deltaLink` URL (in an `@odata.deltaLink` parameter) is returned in the final response, even if the value is an empty array.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"Mark 8 Project Team",
      "description":"Mark 8 Project Team",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "632f6bb2-3ec8-4c1f-9073-0027a8c68593"
               }
      ]
    },
    {
      "displayName":"Sales and Marketing",
      "description":"Sales and Marketing",
      "id":"421e797f-9406-4934-b778-4908421e3505",
      "members@delta": [
               {
                   "@odata.type": "#microsoft.graph.user",
                   "id": "3c8ac7c4-d365-4df9-abfa-356a9dd7763c"
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

### Final nextLink request

The third request uses the latest `@odata.nextLink` returned from the last sync request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-groups-nextlink-request2"
}-->
``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=ppqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-groups-nextlink-request2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-groups-nextlink-request2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-groups-nextlink-request2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-groups-nextlink-request2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-groups-nextlink-request2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Final nextLink response

When a `@odata.deltaLink` URL is returned, there's no more data about the existing state of group objects.  For future requests, the application uses the `@odata.deltaLink` URL to learn about other changes to groups. Save the `deltaToken` and use it in the subsequent request URL to discover more changes to groups.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
    {
      "displayName":"All Employees",
      "id":"bed7f0d4-750e-4e7e-ffff-169002d06fc9"
    },
    {
      "displayName":"Remote living",
      "description":"Remote living",
      "id":"421e797f-9406-ffff-b778-4908421e3505"
    }
  ]
}
```

### deltaLink request

Using the `@odata.deltaLink` from the [last response](#final-nextlink-response), you'll get changes (additions, deletions, or updates) to groups since the last request. Changes include:

- Newly created group objects.
- Deleted group objects.
- Group objects for which a property has changed (for example, **displayName** has been modified).
- Group objects for which member objects have been added or removed.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-groups-deltalink-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-groups-deltalink-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-groups-deltalink-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-groups-deltalink-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-groups-deltalink-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-groups-deltalink-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### deltaLink response

If no changes have occurred, a `@odata.deltaLink` is returned with no results - the **value** property is an empty array. Make sure to replace the previous link in the application with the new one for use in future calls.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": []
}
```

If changes have occurred, a collection of changed groups is included. The response also contains either a `@odata.nextLink` - in case there are multiple pages of changes to retrieve - or a `@odata.deltaLink`. Implement the same pattern of following the `@odata.nextLink` and persist the final `@odata.deltaLink` for future calls.

> [!NOTE]
> This request might have replication delays for groups that were recently created, updated, or deleted. Retry the `@odata.nextLink` or `@odata.deltaLink` after some time to retrieve the latest changes.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/groups/delta?$deltatoken=sZwAFZibx-LQOdZIo1hHhmmDhHzCY0Hs6snoIHJCSIfCHdqKdWNZ2VX3kErpyna9GygROwBk-rqWWMFxJC3pw",
  "value": [
          {
              "displayName": "TestGroup3",
              "description": "A test group for change tracking",
              "id": "2e5807ce-58f3-4a94-9b37-ffff2e085957",
              "members@delta": [
                  {
                      "@odata.type": "#microsoft.graph.user",
                      "id": "632f6bb2-3ec8-4c1f-9073-0027a8c6859",
                      "@removed": {
                          "reason": "deleted"
                      }
                  },
                  {
                      "@odata.type": "#microsoft.graph.user",
                      "id": "37de1ae3-408f-4702-8636-20824abda004"
                  }
              ]
          }
      ]
}
```

Some things to note about the previous example response:

- The objects are returned with the same set of properties originally specified via the `$select` query parameter.

- Both changed and unchanged properties are included. In the example above, the `description` property has a new value, while the `displayName` property hasn't changed.

- `members@delta` contains the following changes to the group membership.

  - The first user in the list has been removed from the group - either by removing the membership or by deleting the user object itself. The `@removed` property describes that. Only users that have been permanently deleted are removed from groups. Users that have been temporary deleted keep their group memberships and won't appear in the delta result until they're permanently deleted. For details, see [directory (deleted items)](/graph/api/resources/directory).

  - The second user has been added to the group.

## Paging through members in a large group

The `members@delta` property is included in group objects by default, when the `$select` query parameter hasn't been specified, or when the `$select=members` parameter is explicitly specified. For groups with many members, it's possible that all members can't fit into a single response. Implement the following pattern to handle such cases.

> [!NOTE]
> This pattern applies to both the initial retrieval of group state as well as to subsequent calls to get delta changes.

Let's assume you're running the following delta query - either to capture the initial full state of groups, or later on to get delta changes:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-groups-delta-paging-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/groups/delta?$select=displayName,description,members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-groups-delta-paging-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-groups-delta-paging-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-groups-delta-paging-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-groups-delta-paging-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-groups-delta-paging-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

1. Microsoft Graph may return a response that contains just one group object, with a large list of members in the `members@delta` property:

**First page**

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=<...>",
  "value": [
    {
      "displayName":"LargeGroup",
      "description":"A group containing thousands of users",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "632f6bb2-3ec8-4c1f-9073-0027a8c6859",
              "@removed": {
                  "reason": "deleted"
              }
          },
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "37de1ae3-408f-4702-8636-20824abda004"
          },
          <...more users here...>
      ]
    }
    <...no more groups included - this group filled out the entire response...>
  ]
}
```

2. When you follow the `@odata.nextLink`, you may receive a response containing the same group object. The same property values will be returned but the `members@delta` property now contains a different list of users.

**Second page**

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#groups",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=<...>",
  "value": [
    {
      "displayName":"LargeGroup",
      "description":"A group containing thousands of users",
      "id":"2e5807ce-58f3-4a94-9b37-ffff2e085957",
      "members@delta": [
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "c08a463b-7b8a-40a4-aa31-f9bf690b9551",
              "@removed": {
                  "reason": "deleted"
              }
          },
          {
              "@odata.type": "#microsoft.graph.user",
              "id": "23423fa6-821e-44b2-aae4-d039d33884c2"
          },
          <...more users here...>
      ]
    }
    <...no more groups included - this group filled out the entire response...>
  ]
}
```

3. Eventually, the entire member list will be returned in this fashion, and other groups will start showing up in the response.

We recommend the following best practices to correctly handle this pattern:
- Always follow `@odata.nextLink` and locally merge each group's state: as you receive responses related to the same group, use them to build the full membership list in your application.
- Don't assume a specific sequence of the responses. Assume that the same group could show up anywhere in the `@odata.nextLink` sequence and handle that in your merge logic.


## See also
[Microsoft Graph delta query](delta-query-overview.md) overview.
