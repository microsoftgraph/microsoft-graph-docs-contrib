---
title: "Get reflectCheckInResponse"
description: "Read the properties and relationships of a reflectCheckInResponse object."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Get reflectCheckInResponse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [reflectCheckInResponse](../resources/reflectcheckinresponse.md) object. This method gets the responses to a [Microsoft Reflect](https://reflect.microsoft.com/) check-in.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reflectcheckinresponse_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/reflectcheckinresponse-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /education/reports/reflectCheckInResponses
```

## Optional query parameters
This method supports the `$top`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

The `$filter` and `$orderby` query parameters are supported for all properties. 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [reflectCheckInResponse](../resources/reflectcheckinresponse.md) object in the response body.

## Examples

### Example 1: Get the Reflect check-in responses from the last 24 hours

The following example shows how to get the Reflect check-in responses from the last 24 hours.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_reflectcheckinresponse"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/reflectCheckInResponses
```

#### Response

The following example shows the default response that includes Reflect check-in responses from the last 24 hours.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.reflectCheckInResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-09-19T11:44:16.0821219Z",
      "responderId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "responseFeedback": "pleasant",
      "responseEmotion": "motivated",
      "submitDateTime": "2023-09-19T11:46:16.2813907Z"
    },
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": null,
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-09-19T11:44:16.0821219Z",
      "responderId": "958c7306-9a47-15fb-958c-8289ae30243b",
      "responseFeedback": "unpleasant",
      "responseEmotion": "bored",
      "submitDateTime": "2023-09-19T11:55:16.2813907Z"
    }
  ]
}
```

### Example 2: Get the Reflect check-in responses for a specific date using $filter

The following example shows how to get the Reflect check-in responses for a specific date using the `$filter` query parameter.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_ReflectCheckinResponses_filter"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/reports/reflectCheckInResponses?$filter=submitDateTime gt 2023-10-10T00:00:00.000Z
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.reflectCheckInResponse",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/reports/reflectCheckInResponses",
  "value": [
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-10-19T11:44:16.0821219Z",
      "responderId": "f2df94da-9a47-4c65-958c-8289ae30243b",
      "responseFeedback": "pleasant",
      "responseEmotion": "motivated",
      "submitDateTime": "2023-10-19T11:46:16.2813907Z"
    },
    {
      "creatorId": "0f1503b6-15fb-ea4a-ba6e-21b31e8a9b5c",
      "classId": null,
      "checkInId": "b8fc7306-068e-4380-93d4-ee72019a50fe",
      "checkInTitle": "How are you feeling today?",
      "isClosed": false,
      "createdDateTime": "2023-10-19T11:44:16.0821219Z",
      "responderId": "958c7306-9a47-15fb-958c-8289ae30243b",
      "responseFeedback": "unpleasant",
      "responseEmotion": "bored",
      "submitDateTime": "2023-11-19T11:55:16.2813907Z"
    }
  ]
}
```
