---
title: "Combine multiple HTTP requests using JSON batching"
description: "Use JSON batching to optimize your application by combining multiple requests into a single JSON object, saving the application significant network latency."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: high
ms.topic: conceptual
ms.custom: graphiamtop20
ms.date: 02/14/2024
#Customer intent: As a developer, I want to learn how to use Microsoft Graph to combine multiple requests into a single JSON batch request, so that I can optimize my application.
---

# Combine multiple HTTP requests using JSON batching

JSON batching allows you to optimize your application by combining multiple requests (up to 20) into a single JSON object. 

Consider a client that wants to compose a view of the following unrelated data:

- An image stored in OneDrive
- A list of Planner tasks
- The calendar for a group

Combining these three individual requests into a single batch request can save the application significant network latency.

Microsoft Graph implements the `$batch` [OData URL path segment](http://docs.oasis-open.org/odata/odata-json-format/v4.01/odata-json-format-v4.01.html#sec_BatchRequestsandResponses) to support JSON batching.

> [!VIDEO https://www.youtube-nocookie.com/embed/tzWGOp8zYh8]

## Example - First JSON batch request

First, you construct the JSON batch request for the example scenario. In this scenario, the individual requests aren't interdependent and therefore can be placed into the batch request in any order.

```http
POST https://graph.microsoft.com/v1.0/$batch
Accept: application/json
Content-Type: application/json

{
  "requests": [
    {
      "id": "1",
      "method": "GET",
      "url": "/me/drive/root:/{file}:/content"
    },
    {
      "id": "2",
      "method": "GET",
      "url": "/me/planner/tasks"
    },
    {
      "id": "3",
      "method": "GET",
      "url": "/groups/{id}/events"
    },
    {
      "id": "4",
      "url": "/me",
      "method": "PATCH",
      "body": {
        "city" : "Redmond"
      },
      "headers": {
        "Content-Type": "application/json"
      }
    },
    {
      "id": "5",
      "url": "users?$select=id,displayName,userPrincipalName&$filter=city eq null&$count=true",
      "method": "GET",
      "headers": {
        "ConsistencyLevel": "eventual"
      }
    }
  ]
}
```

## Explanation of a batch request format

Batch requests are always sent using a **POST** to the `/$batch` endpoint.

A JSON batch request body consists of a single JSON object with one required property: **requests**. The **requests** property is a collection of individual requests. For each individual request, the following properties can be passed.


| Property | Description |
|----------|-------------|
| id       | Required. String. A correlation value to associate individual responses with requests. This value allows the server to process requests in the batch in the most efficient order. Not case-sensitive. Must be unique in the batch. |
| method   | Required. The HTTP method.    |
| url      | Required. The relative resource URL for the individual request. Therefore, while the absolute URL is `https://graph.microsoft.com/v1.0/users`, this url is `/users`. |
| headers   | Optional but required when the **body** is specified. A JSON object with the key/value pair for the headers. For example, when the **ConsistencyLevel** header is required, this property is represented as `"headers": {"ConsistencyLevel": "eventual"}`. When the **body** is supplied, a **Content-Type** header must be included.    |
| body   | Optional. Might be a JSON object or a base64 URL-encoded value, for example, when the body is an image. When a **body** is included with the request, the **headers** object must contain a value for **Content-Type**. |

## Example - First JSON batch response

Responses to the batched requests might appear in a different order. The **id** property can be used to correlate individual requests and responses.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "responses": [
    {
      "id": "1",
      "status": 302,
      "headers": {
        "location": "https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi"
      }
    },
    {
      "id": "3",
      "status": 401,
      "body": {
        "error": {
          "code": "Forbidden",
          "message": "..."
        }
      }
    },
    {
      "id": "5",
      "status": 200,
      "headers": {
        "Cache-Control": "no-cache",
        "x-ms-resource-unit": "1",
        "OData-Version": "4.0",
        "Content-Type": "application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8"
      },
      "body": {
        "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(id,displayName,userPrincipalName)",
        "@odata.count": 12,
        "value": [
          {
            "id": "071cc716-8147-4397-a5ba-b2105951cc0b",
            "displayName": "Adele Vance",
            "userPrincipalName": "AdeleV@Contoso.com"
          }
        ]
      }
    },
    {
      "id": "2",
      "status": 200,
      "body": {
        "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.plannerTask)",
        "value": []
      }
    },
    {
      "id": "4",
      "status": 204,
      "body": null
    }
  ]
}
```

## Explanation of a batch response format

The response format for JSON batch requests differs from the request format as follows:

- The property in the main JSON object is named **responses** as opposed to **requests**.
- Individual responses might appear in a different order than the requests.
- Rather than **method** and **url**, individual responses have a **status** property. The value of **status** is the HTTP status code.
- The **headers** property in each individual response represents the headers returned by the server, for example, **Cache-Control** and **Content-Type** headers.

The status code on a batch response is typically `200` or `400`. If the batch request itself is malformed, the status code is `400`. If the batch request is parseable, the status code is `200`. A `200` status code on the batch response headers doesn't indicate that the individual requests inside the batch succeeded. This is why each individual response in the **responses** property has a status code.

## Sequencing requests with the dependsOn property

You can specify the requests in the batch to be executed in a specified order by using the **dependsOn** property. This property is an array of strings that references the **id** of a different individual request. For example, in the following request, the client is specifying that requests should be run in the order request 1 then request 2, then request 4, then request 3.

```json
{
  "requests": [
    {
      "id": "1",
      "method": "GET",
      "url": "..."
    },
    {
      "id": "2",
      "dependsOn": [ "1" ],
      "method": "GET",
      "url": "..."
    },
    {
      "id": "4",
      "dependsOn": [ "2" ],
      "method": "GET",
      "url": "..."
    },
    {
      "id": "3",
      "dependsOn": [ "4" ],
      "method": "GET",
      "url": "..."
    }
  ]
}
```

If an individual request fails, any request that depends on that request fails with status code `424` (Failed Dependency).

> [!TIP]
> Batch should be either fully sequential or fully parallel.

## Bypassing URL length limitations with batching

Another use case for JSON batching is to bypass URL length limitations. In cases where the filter clause is complex, the URL length might surpass limitations built into browsers or other HTTP clients. You can use JSON batching as a workaround for running these requests because the lengthy URL simply becomes part of the request payload.

## Batch size limitations

- JSON batch requests are currently limited to 20 individual requests.
- Depending on the APIs that are part of the batch request, the [underlying services impose their own throttling limits](throttling-limits.md) that affect applications that use Microsoft Graph to access them.
- Requests in a batch are evaluated individually against the applicable throttling limits and if any request exceeds the limits, it fails with a status of `429`.

For more information, see [Throttling and batching][throttling-and-batching].

## Known issues

For a list of current limitations related to batching, see [known issues](https://developer.microsoft.com/en-us/graph/known-issues/?filterBy=JSON%20batching&search=).

## Related content

- [Use the Microsoft Graph SDKs to batch requests](/graph/sdks/batch-requests)


[batching-known-issues]: https://developer.microsoft.com/en-us/graph/known-issues/?filterBy=JSON%20batching&search=
[odata-4.01-json]: https://www.oasis-open.org/committees/download.php/60365/odata-json-format-v4.01-wd02-2017-03-24.docx
[throttling-and-batching]: throttling.md#throttling-and-batching