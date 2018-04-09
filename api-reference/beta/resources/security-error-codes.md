# Microsoft Security Graph error responses and resource types

Errors in Microsoft Graph security API are returned using standard HTTP status codes.

The security API is a federated service that receives multiple responses from all the onboarded data providers, when an http error is received by the security API it will send back a Warning header with following format:
<!-- { "blockType": "ignored" } -->

```http
{Vendor}/{Provider}/{StatusCode}/{LatencyInMs}
```

This warning header is only sent back to consumers when one of the data providers (DP) returns or triggers the following errors:

- The status code is used in the warning unless it’s 2xx or 404. For example, HttpStatusCode.Forbidden (403).
- If DP times out, HttpStatusCode.GatewayTimeout (504) is used in the warning header
- If some other issues happen, HttpStatusCode.InternalServerError (500) is used in the warning header

If a data provider returns 2xx or 404 then it’s not shown in the Warning header.

## Scenario

Users ask for /alerts/{id}.

    DP1: 404
    DP2: timeout
    DP3: 200
    DP4: 403 since the tenant did not buy its service

Warning header looks like:

```http
{Vendor2}/{DP2}/504/29000    (usually we set timeout limit at 29 seconds)
{Vendor4}/{DP4}/403/10       (assume DP4 rejected the request in 10 ms)
```

> **Note:** Each HTTP header is a collection of sub items, so users can enumerate the Warning header and check above items.
