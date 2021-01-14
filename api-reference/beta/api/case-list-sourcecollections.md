---
title: "List sourceCollections"
description: "Get the sourceCollection resources from the sourceCollections navigation property."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# List sourceCollections

Namespace: microsoft.graph

Get the [sourceCollection](../resources/sourcecollection.md) resources from the sourceCollections navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /compliance/ediscovery/cases/{caseId}/sourceCollections
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sourceCollection](../resources/sourcecollection.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_sourcecollection"
}
-->

``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.compliance.ediscovery.contract.sourceCollection)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases/c816dd6f-5af8-40c5-a760-331361e05c60/sourceCollections",
    "value": [
        {
            "description": "",
            "lastModifiedDateTime": "2020-12-31T18:54:28.80694Z",
            "createdBy": {
                "user": {
                    "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
                    "displayName": "eDiscovery admin"
                }
            },
            "lastModifiedBy": {
                "user": {
                    "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
                    "displayName": "eDiscovery admin"
                }
            },
            "contentQuery": "subject:'Quarterly Financials'",
            "tenantSources": "none",
            "id": "fe5ef84e9c8c45819c056f6eb261718e",
            "displayName": "Quarterly Financials",
            "createdDateTime": "2020-12-11T22:56:14.2329133Z"
        }
    ]
}
```
