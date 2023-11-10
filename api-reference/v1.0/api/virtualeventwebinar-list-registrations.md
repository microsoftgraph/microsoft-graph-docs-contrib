---
title: "List virtualEventRegistrations"
description: "Get a list of all registration records of a webinar."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List virtualEventRegistrations
Namespace: microsoft.graph

Get a list of all [registration](../resources/virtualeventregistration.md) records of a [webinar](../resources/virtualeventwebinar.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistration_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-list-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registration records from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/registrations
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistration](../resources/virtualeventregistration.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventregistration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventRegistration",
      "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
      "userId": "String",
      "firstName": "Emilee",
      "lastName": "Pham",
      "email": "EmileeMPham@contoso.com",
      "status": "registered",
      "registrationDateTime": "2023-03-07T22:04:17",
      "cancelationDateTime": null,
      "registrationQuestionAnswers": [
        {
          "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
          "displayName": null,
          "value": null,
          "booleanValue": null,
          "multiChoiceValues": [
            "Seattle"
          ]
        },
        {
          "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
          "displayName": null,
          "value": null,
          "booleanValue": true,
          "multiChoiceValues": []
        },
        {
          "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
          "displayName": null,
          "value": null,
          "booleanValue": null,
          "multiChoiceValues": [
            "Cancun",
            "Hoboken",
            "Beijing"
          ]
        }
      ]
    }
  ]
}
```
