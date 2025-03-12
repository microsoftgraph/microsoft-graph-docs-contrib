---
title: "Combine multiple HTTP requests using JSON batching"
description: "Use JSON batching to optimize your application by combining multiple requests into a single JSON object, saving the application significant network latency."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: high
ms.subservice: non-product-specific
ms.topic: concept-article
ms.custom: graphiamtop20
ms.date: 02/21/2025
#Customer intent: As a developer, I want to learn how to use Microsoft Graph to combine multiple requests into a single JSON batch request, so that I can optimize my application.
---

# Combine multiple HTTP requests using JSON batching

JSON batching allows clients to combine multiple requests into a single JSON object and a single HTTP call, reducing network roundtrips and improving efficiency. Microsoft Graph supports batching up to 20 requests into the JSON object.

In this article, we explore the basics of JSON batching, how it works, and how you can use it to optimize your applications.

> [!NOTE]
> Microsoft Graph implements the `$batch` [OData URL path segment](http://docs.oasis-open.org/odata/odata-json-format/v4.01/odata-json-format-v4.01.html#sec_BatchRequestsandResponses) to support JSON batching.

> [!VIDEO https://www.youtube-nocookie.com/embed/tzWGOp8zYh8]

## Example scenario

Consider a client that wants to compose a view of the following unrelated data:

- An image stored in OneDrive
- A list of Planner tasks
- The calendar for a group

Combining these three individual requests into a single batch request can save the application significant network latency.

## Creating a batch request

To create a batch request:

1. Specify the request HTTP method as **POST**.
1. Specify the URL endpoint, whether it targets the `v1.0` or `beta` version of Microsoft Graph, and append the `$batch` segment to the URL. That is, `https://graph.microsoft.com/v1.0/$batch`.
1. Define the batch request body as follows:
    1. A JSON batch request body consists of a single JSON object with one required property: **requests**. This property is a collection of individual requests.
    2. For each individual request, the following properties can be passed.

    | Property | Description |
    |----------|-------------|
    | id       | Required. String. A correlation value to associate individual responses with requests. This value allows the server to process requests in the batch in the most efficient order. Not case-sensitive. Must be unique in the batch, otherwise, the batch request fails with a `400` error code. |
    | method   | Required. The HTTP method supported for the request specified in **url**.    |
    | url      | Required. The relative resource URL for the individual request. Therefore, while the absolute URL is `https://graph.microsoft.com/v1.0/users`, this url is `/users`. |
    | headers   | Optional but required when the **body** is specified. A JSON object with the key/value pair for the headers. For example, when the **ConsistencyLevel** header is required, this property is represented as `"headers": {"ConsistencyLevel": "eventual"}`. When the **body** is supplied, a **Content-Type** header must be included.    |
    | body   | Optional. Might be a JSON object or a base64 URL-encoded value, for example, when the body is an image. When a **body** is included with the request, the **headers** object must contain a value for **Content-Type**. |

### Example JSON batch request

In this example scenario, you construct the JSON batch request. The individual requests aren't interdependent and therefore can be placed into the batch request in any order.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "json-batching-example-request"
}-->
```http
POST https://graph.microsoft.com/v1.0/$batch
Accept: application/json
Content-Type: application/json

{
  "requests": [
    {
      "id": "1",
      "method": "GET",
      "url": "/me/memberOf"
    },
    {
      "id": "2",
      "method": "GET",
      "url": "/me/planner/tasks"
    },
    {
      "id": "3",
      "method": "DELETE",
      "url": "/groups/0e226165-c685-41ce-8bfc-df8360ab325d"
    },
    {
      "id": "4",
      "url": "/users/161ab652-cdbc-490d-82a4-0ada1f0db247/getPasswordSingleSignOnCredentials",
      "method": "POST",
      "body": {},
      "headers": {"Content-Type": "application/json"}
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/json-batching-example-request-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Processing the JSON batch response

The response format for JSON batch requests differs from the request format as follows:

- The property in the main JSON object is named **responses** as opposed to **requests**.
- Individual responses might appear in a different order than the requests. The **id** property can be used to correlate individual requests and responses.
- Rather than **method** and **url**, individual responses have a **status** property. The value of **status** is the HTTP status code.
- The **headers** property in each individual response represents the headers returned by the server, for example, **Cache-Control** and **Content-Type** headers.

The status code on a batch response is typically `200` or `4xx`. If the batch request itself is malformed, the status code is `400`. If the batch request is parseable, the status code is `200`. A `200` status code on the batch response headers doesn't indicate that the individual requests inside the batch succeeded. This is why each individual response in the **responses** property has a status code.

### Example JSON batch response

For the previous example, assume this response:

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "responses": [
        {
            "id": "1",
            "status": 200,
            "headers": {
                "Cache-Control": "no-cache",
                "x-ms-resource-unit": "1",
                "OData-Version": "4.0",
                "Content-Type": "application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8"
            },
            "body": {
                "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
                "@odata.nextLink": "https://graph.microsoft.com/beta/me/memberOf?$top=1&$skiptoken=RFNwdAoAAQAAAAAAAAAAFAAAAI45VMy0CO9Ei1L3Lr1q95UBAAAAAAAAAAAAAAAAAAAXMS4yLjg0MC4xMTM1NTYuMS40LjIzMzEGAAAAAAABURXWGePFEEGbudEn3SOTuQEDAQAAAQAAAAA",
                "value": [
                    {
                        "@odata.type": "#microsoft.graph.directoryRole",
                        "id": "21004afc-7bb2-4fe6-a1e1-074ebd3e52c1",
                        "deletedDateTime": null,
                        "description": "Can manage all aspects of users and groups, including resetting passwords for limited admins.",
                        "displayName": "User Administrator",
                        "roleTemplateId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
                    }
                ]
            }
        },
        {
            "id": "2",
            "status": 403,
            "headers": {
                "Cache-Control": "no-cache",
                "X-ProxyCluster": "wus-001.tasks.osi.office.net",
                "X-OfficeCluster": "wus-001.tasks.osi.office.net",
                "X-Tasks-CorrelationId": "18a8e521-78a4-4129-9b6b-d678116464e7",
                "Content-Type": "application/json"
            },
            "body": {
                "error": {
                    "code": "",
                    "message": "You do not have the required permissions to access this item.",
                    "innerError": {
                        "date": "2025-02-13T10:17:05",
                        "request-id": "93b6f17e-c05d-4f45-ad2a-6665c708d8a0",
                        "client-request-id": "e70c5c1b-8b47-68c0-3171-3d22f5e0bd54"
                    }
                }
            }
        },
        {
            "id": "3",
            "status": 403,
            "headers": {
                "Cache-Control": "no-cache",
                "x-ms-resource-unit": "1",
                "Content-Type": "application/json"
            },
            "body": {
                "error": {
                    "code": "Authorization_RequestDenied",
                    "message": "Insufficient privileges to complete the operation.",
                    "innerError": {
                        "date": "2025-02-13T10:17:06",
                        "request-id": "93b6f17e-c05d-4f45-ad2a-6665c708d8a0",
                        "client-request-id": "e70c5c1b-8b47-68c0-3171-3d22f5e0bd54"
                    }
                }
            }
        },
        {
            "id": "4",
            "status": 405,
            "headers": {
                "Cache-Control": "no-cache",
                "x-ms-resource-unit": "1",
                "Content-Type": "application/json"
            },
            "body": {
                "error": {
                    "code": "Request_BadRequest",
                    "message": "Specified HTTP method is not allowed for the request target.",
                    "innerError": {
                        "date": "2025-02-13T10:21:18",
                        "request-id": "3a3b1bf7-3596-4493-8264-de81e028071f",
                        "client-request-id": "e5f9a304-2796-b7e8-ccce-dd989953ebc4"
                    }
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
                "@odata.context": "https://graph.microsoft.com/beta/$metadata#users(id,displayName,userPrincipalName)",
                "@odata.count": 36,
                "value": [
                    {
                        "id": "10a1d484-cd1a-4162-a5a4-832370bac356",
                        "displayName": "Lynne Robbins",
                        "userPrincipalName": "LynneR@contoso.com"
                    }
                ]
            }
        }
    ]
}
```

### Explanation of individual responses in the example batch response

- Requests 1 and 5 succeeded as shown by the `200` status code.
- Requests 2 and 3 failed with a `403` status code because the caller didn't have the required permissions.
- Request 4 failed with a `405` status code because the endpoint specified in the **url** property of the request is currently in `beta` only yet the request URL targets the `v1.0` endpoint of Microsoft Graph. While the target URL doesn't require a request body, you must still specify the **headers** and **body** paremeters where only **body** can be an empty object.
<!--- For requests that succeded, the **x-ms-resource-unit** throttling-related header indicates how much the request consumed against the service-defined throttling limits. 

Hide for now because this header seems to be returned for directory objects only-->

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
