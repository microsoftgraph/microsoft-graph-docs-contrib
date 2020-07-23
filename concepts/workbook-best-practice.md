---
title: "Best practices for Excel APIs in Microsoft Graph"
description: "Best practices for Excel APIs in Microsoft Graph"
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Best practices for working with the Excel API in Microsoft Graph

This article provides recommendations for working with the Excel APIs in Microsoft Graph. These recommendations are based on most frequently raised questions from our customers.

## Manage sessions in the most efficient way

If you have more than one calls to make within a certain period of time, we strongly suggest you create a session and pass the session ID with each request. To represent the session in the API, use the `workbook-session-id: {session-id}` header. By doing so you can use the Excel APIs in the most efficient way.

Here is an example on a typical scenario you should choose this mode: “I want to add a new number to the table and then find one record in my workbook.”

First step is to create a session. You make a request similar to the following.

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/createSession
Content-type: application/json
Content-length: 52

{
  "persistChanges": true
}
```

You receive a response once the request is successful.

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 52

{
  "id": "id-value",
  "persistChanges": true
}
```

Second step is to add a new row to the table with request similar as following.

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/Table1/rows/add
Content-type: application/json
workbook-session-id: {session-id}

{
  "values": [[“east”, “pear”, 4]]
}
```

The successful response looks like:

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: “42”

{
  "index": 6,
  "values": [[“east”, “pear”, 4]]
}
```

The third step is to look up a value in the updated table, with request similar as following.

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/functions/vlookup
Content-type: application/json
workbook-session-id: {session-id}

{
    "lookupValue":"pear",
    "tableArray":{"Address":"Sheet1!B2:C7"},
    "colIndexNum":2,
    "rangeLookup":false
}
```

The successful response looks like:

```http
HTTP code: 200 OK
content-type: application/json

{
    "value": 5
}
```

The last step, please do not forget to close the session once all of the requests are completed.

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/closeSession
Content-type: application/json
workbook-session-id: {session-id}
Content-length: 0

{
}
```

The successful response looks similar as following.

```http
HTTP/1.1 204 No Content
```

For more details, see [Create session](../v1.0/api/workbook-createsession.md) and [Close session](../v1.0/api/workbook-closesession.md).


## Working with APIs that may take a long time to complete

You may notice some API responses require indeterminate time to complete, for example, open a workbook with large size. To resolve this issue, we provide the long running operation pattern. By using this pattern, you do not need to wait until the action is complete before returning a response or worry about the timeout for the request.

Currently, Excel Graph has enabled long running operation pattern for session creation API. Here are the steps:

1. Adds a header of `Prefer: respond-async` in the request to indicate it as a long running operation when creating a session.
2. In long running operation pattern, it will return a `202 Accepted` response along with a Location header to retrieve operation status. Otherwise, if session creation succeeds in several seconds, it will return a `201 Created` response directly instead of going to long running operation pattern.
3. With the `202 Accepted` response, you can retrieve the operation status through specified location. Operation status includes `notStarted`, `running`, `succeeded`, and `failed`.
4. After operation completes, you can get the session creation result through the specified URL in succeeded response.

Following is an example of create session with long running operation pattern.

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/worksheets({id})/createSession
Prefer: respond-async
Content-type: application/json
{
    "persistChanges": true
}
```

Long running operation pattern will return a `202 Accepted` response similar as following.

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
Content-type: application/json

{
}
```

In some cases, if the creation succeeds directly in seconds, it might return normal pattern with a `201 Created` response like following.

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 52

{
  "id": "id-value",
  "persistChanges": true
}
```

In long running operation pattern, You can get creation status with specified location with request similar as following.

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
{
}
```

The response with succeeded status looks like:

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "id": {operation-id},
    "status": "succeeded",
    "resourceLocation": "https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
}
```

You can get the session creation result through `resourceLocation` with request similar as following.

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
{
}
```

Corresponding response looks like:

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "id": "id-value",
    "persistChanges": true 
}
```

For more details of session creation with long running operation pattern, see [Create session](../v1.0/api/workbook-createsession.md).


