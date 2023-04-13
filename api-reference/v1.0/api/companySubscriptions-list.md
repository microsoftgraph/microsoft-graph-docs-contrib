---
title: "List companySubscriptions"
description: "Retrieve the list of commercial subscriptions that an organization has acquired."
localization_priority: Normal
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List companySubscriptions

Namespace: microsoft.graph

Get the list of commercial subscriptions that an organization has acquired.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                    |
| :------------------------------------- | :--------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | Organization.Read.All, Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported.                                                                                 |
| Application                            | Organization.Read.All, Directory.Read.All, Organization.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/subscriptions
```

## Optional query parameters

This method supports the [OData query parameters](/graph//query-parameters) to help customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [companySubscriptions](../resources/companySubscriptions.md) objects in the response body.

## Example

##### Request

Here is an example of the request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_companySubscriptions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/directory/subscriptions
```

---

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscribedSku",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "createdDateTime": "2023-01-01T00:00:00Z",
      "id": "860697e3-b0aa-4196-a6c6-7ec361ed58f7",
      "isTrial": false,
      "nextLifecycleDateTime": "2023-02-01T00:00:00Z",
      "ocpSubscriptionId": "f9c1ea2d-2c6e-4717-8c3b-7130812d70ba",
      "serviceStatus": [
                          {
                            "servicePlanId": "8b8269e5-f841-416c-ab3a-f5dfb9737986",
                            "servicePlanName": "MyPlanName",
                            "provisioningStatus": "Success",
                            "appliesTo": "User"
                          },
                       ],
      "skuId": "0816ccb9-3785-4d19-bf78-6c53e2106509",
      "skuPartNumber": "MyPartNumber",
      "status": "Enabled",
      "totalLicenses": 25
    }
  ]
}
```