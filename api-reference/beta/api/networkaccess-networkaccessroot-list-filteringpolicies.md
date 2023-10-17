---
title: "List filteringPolicies"
description: "Get a list of the microsoft.graph.networkaccess.filteringPolicy objects and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List filteringPolicies
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/filteringPolicies
```

## Optional query parameters
This method supports the `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringPolicy](../resources/networkaccess-filteringpolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/filteringPolicies
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles",
    "value": [
        {
            "priority": 100,
            "createdDateTime": "2023-06-27T22:56:51Z",
            "id": "1a582cb4-e97b-4b3c-9727-acfe825bd855",
            "name": "apply trv2 tag",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-06-27T22:59:37Z"
        },        
        {
            "priority": 111,
            "createdDateTime": "2023-08-25T19:04:51Z",
            "id": "161760b2-7053-4045-b886-3bce286989ae",
            "name": "Block socia media websites",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-08-25T19:04:51Z"
        },
        {
            "priority": 300,
            "createdDateTime": "2023-05-30T18:40:58Z",
            "id": "519085fd-efb2-437c-af22-04bff0c2b571",
            "name": "Quarantine Compromised Devices ",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-06-20T23:14:03Z"
        },
        {
            "priority": 349,
            "createdDateTime": "2023-07-28T16:10:00Z",
            "id": "e7542950-e4a2-4a4f-91e8-ca3470bc34df",
            "name": "Data protection for Emma",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-07-28T16:10:00Z"
        },
        {
            "priority": 800,
            "createdDateTime": "2023-07-11T15:38:37Z",
            "id": "9020f79d-71f6-4650-83a9-6b532479578f",
            "name": "test profile",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-10-16T06:23:53Z"
        },
        {
            "priority": 5500,
            "createdDateTime": "2023-08-02T17:51:15Z",
            "id": "029bb321-9c16-4d95-a708-2b8ce0c0fa5c",
            "name": "Sanjay's Profile",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-08-02T17:51:15Z"
        },
        {
            "priority": 5600,
            "createdDateTime": "2023-08-07T19:55:04Z",
            "id": "c308a3af-e3f4-4e7b-b8cf-d17fd7acb97c",
            "name": "John's Policy Profile",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-10-16T05:55:28Z"
        },
        {
            "priority": 65000,
            "createdDateTime": "2023-08-04T21:51:13Z",
            "id": "f537dff6-4cbf-4d5b-80e5-a257ee4b74e0",
            "name": "Default /Baseline",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-08-04T21:51:13Z"
        }
    ]
}
```

