---
title: "Get incremental changes for users"
description: "Use delta query to discover changes without fetching the entire set of users to compare changes. Example shows a series of requests to track changes to users."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: "jumasure"
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 11/17/2022
---

# Get incremental changes for users

The [delta query](./delta-query-overview.md) in Microsoft Graph lets you query for additions, deletions, or updates to [supported resources](delta-query-overview.md#supported-resources). It is enabled through a series of [delta](/graph/api/user-delta) requests. For users, the delta query enables you to discover changes without fetching the entire set of users to compare changes.

Clients that synchronize users with a local profile store can use the delta query for both their initial full synchronization along with subsequent incremental synchronizations. Typically, a client would do an initial full synchronization of all the users in a tenant, and then, get incremental changes to users periodically.

## Track changes to users

Track user changes through one or more GET requests with the **delta** function. The GET request is like a [list users](/graph/api/user-list) request, except with the following extra objects in the URL:

- The **delta** function.
- A [state token](./delta-query-overview.md) (_deltaToken_ or _skipToken_) from the previous GET **delta** function call.

## Example: track changes to users

The following example shows a series of requests to track changes to users:

1. An [initial request](#initial-request) and [response](#initial-response)
2. A [nextLink request](#nextlink-request) and [response](#nextlink-response)
3. A [final nextLink request](#final-nextlink-request) and [response](#final-nextlink-response)
4. A [deltaLink request](#deltalink-request) and [deltaLink response](#deltalink-response)

Take note of the following in the responses:

- When the user is deleted, the item contains an annotation: `@removed` with value of `"reason": "changed"`.
- When the user is permanently deleted, the item contains  an annotation: `@removed` with value of `"reason": "deleted"`.
- When the user is created, or restored, there's no annotation.

### Initial request

To track changes in the user resource, make a request and include the **delta** function as a URL segment.

Take note of the following items:

- The optional `$select` query parameter is included in the request to demonstrate how query parameters are automatically included in future requests.
- The initial request doesn't include a state token. State tokens will be used in subsequent requests.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-users-initial-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/users/delta?$select=displayName,givenName,surname
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-users-initial-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-users-initial-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-users-initial-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-users-initial-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-users-initial-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Initial response

If successful, this method returns `200 OK` response code and [user](/graph/api/resources/user) collection object in the response body. Assuming the entire set of users is too large, the response will also include a `@odata.nextLink` state token in an `@odata.nextLink` parameter.

In this example, a `@odata.nextLink` URL is returned indicating there are more pages of data to be retrieved in the session. The `$select` query parameter from the initial request is encoded into the `@odata.nextLink` URL.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users(displayName,givenName,surname)",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/users/delta?$skiptoken=oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhZRi1hQ7Spe__dpvm3U4zReE4CYXC2zOtaKdi7KHlUtC2CbRiBIUwOxPKLa",
  "value": [
    {
      "displayName":"Cameron White",
      "givenName":"Cameron",
      "surname":"White",
      "id":"ffff7b1a-13b6-477b-8c0c-380905cd99f7"
    },
    {
      "displayName":"Delia Dennis",
      "givenName":"Delia",
      "surname":"Dennis",
      "id":"605d1257-ffff-40b6-8e6f-528a53f5dc55"
    },
    {
      "id": "86462606-fde0-4fc4-9e0c-a20eb73e54c6",
      "@removed": {
        "reason": "deleted"
      }
    },
    {
      "displayName": "Conf Room Adams",
      "id": "6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0"
    }
  ]
}
```

### nextLink request

The second request specifies the `skipToken` returned from the previous response. Notice the `$select` parameter is encoded and included in the `skipToken`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-users-nextlink-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/users/delta?$skiptoken=oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhZRi1hQ7Spe__dpvm3U4zReE4CYXC2zOtaKdi7KHlUtC2CbRiBIUwOxPKLa
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-users-nextlink-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-users-nextlink-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-users-nextlink-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-users-nextlink-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-users-nextlink-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### nextLink response

The response contains another `@odata.nextLink` with a new `skipToken` value, which indicates that more changes that were tracked for users are available. Use the `@odata.nextLink` URL in more requests until a `@odata.deltaLink` URL (in an `@odata.deltaLink` parameter) is returned in the final response, even if the value is an empty array.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7",
  "value": [
    {
      "displayName":"Mallory Cortez",
      "givenName":"Mallory",
      "surname":"Cortez",
      "id":"d8c37826-ffff-4cae-b348-e2725b1e814b"
    },
    {
      "displayName":"Diego Sicilian",
      "givenName":"Diego",
      "surname":"Sicilian",
      "id":"8b1ee412-cd8f-4d59-ffff-24010edb9f1f"
    }
  ]
}
```

### Final nextLink request

The third request uses the latest `skipToken` returned from the last sync request. 


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-users-nextlink-request2"
}-->
``` http
GET https://graph.microsoft.com/v1.0/users/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-users-nextlink-request2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-users-nextlink-request2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-users-nextlink-request2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-users-nextlink-request2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-users-nextlink-request2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Final nextLink response

When a `@odata.deltaLink` URL is returned, there's no more data about the existing state of the user objects. For future requests, the application uses the `@odata.deltaLink` URL to learn about other changes to users. Save the `deltaToken` and use it in the subsequent request URL to discover more changes to users.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460",
  "value": [
    {
      "displayName":"Lidia Holloway",
      "givenName":"Lidia",
      "surname":"Holloway",
      "id":"25dcffff-959e-4ece-9973-e5d9b800e8cc"
    },
    {
      "displayName":"Patti Fernandez",
      "givenName":"Patti",
      "surname":"Fernandez",
      "id":"f6ede700-27d0-4c42-bfb9-4dffff43c74a"
    }
  ]
}
```

### deltaLink request

Using the `deltaToken` from the [last response](#final-nextlink-response), you'll get changes (additions, deletions, or updates) to users since the last request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delta-query-users-deltalink-request"
}-->
``` http
GET https://graph.microsoft.com/v1.0/users/delta?$deltatoken=oEcOySpF_hWYmTIUZBOIfPzcwisr_rPe8o9M54L45qEXQGmvQC6T2dbL-9O7nSU-njKhFiGlAZqewNAThmCVnNxqPu5gOBegrm1CaVZ-ZtFZ2tPOAO98OD9y0ao460
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delta-query-users-deltalink-request-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delta-query-users-deltalink-request-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delta-query-users-deltalink-request-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delta-query-users-deltalink-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delta-query-users-deltalink-request-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## deltaLink response

If no changes have occurred, a `@odata.deltaLink` is returned with no results - the **value** property is an empty array.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/users/delta?$deltatoken=MF1LuFYbK6Lw4DtZ4o9PDrcGekRP65WEJfDmM0H26l4v9zILCPFiPwSAAeRBghxgiwsXEfywcVQ9R8VEWuYAB50Yw3KvJ-8Z1zamVotGX2b_AHVS_Z-3b0NAtmGpod",
  "value": []
}
```

If changes have occurred, a collection of changed user objects is included. The response also contains either a `@odata.nextLink` - in case there are multiple pages of changes to retrieve - or a `@odata.deltaLink`. Implement the same pattern of following the `@odata.nextLink` and persist the final `@odata.deltaLink` for future calls.

> [!NOTE]
> This request might have replication delays for users that were recently created, updated, or deleted. Retry the `@odata.nextLink` or `@odata.deltaLink` after some time to retrieve the latest changes.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "@odata.deltaLink":"https://graph.microsoft.com/v1.0/users/delta?$deltatoken=MF1LuFYbK6Lw4DtZ4o9PDrcGekRP65WEJfDmM0H26l4v9zILCPFiPwSAAeRBghxgiwsXEfywcVQ9R8VEWuYAB50Yw3KvJ-8Z1zamVotGX2b_AHVS_Z-3b0NAtmGpod",
  "value": [
    {
      "displayName":"MOD Administrator",
      "givenName":"MOD",
      "surname":"Administrator",
      "id":"25dcffff-959e-4ece-9973-e5d9b800e8cc"
    },
    {
      "id":"8ffff70c-1c63-4860-b963-e34ec660931d",
      "@removed": {
         "reason": "changed"
      }
    }
  ]
}
```

## See also

- [Microsoft Graph delta query](delta-query-overview.md) overview.
