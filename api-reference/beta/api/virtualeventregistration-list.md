---
title: "List virtualEventRegistrations"
description: "Get a list of all registration records of a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/09/2024
---

# List virtualEventRegistrations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all [registration records](../resources/virtualeventregistration.md) of a [webinar](../resources/virtualeventwebinar.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
```http
GET /solutions/virtualEvents/webinars/{webinarId}/registrations
GET /solutions/virtualEvents/webinars/{webinarId}/registrations?$filter=userId eq '{userId}'
GET /solutions/virtualEvents/webinars/{webinarId}/registrations?$filter=email eq '{email}'
```
## Optional query parameters

This method supports a filter from the [OData query parameters](/graph/query-parameters) to help customize the response.

## Function parameters

In the request URL, you can provide either of the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|The ID of the specified user in Microsoft Entra.|
|email|String|The email address of the specified user registered to the webinar.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistration](../resources/virtualeventregistration.md) objects in the response body.
If you fetch a virtual event registration by **userId** or **email**, this method returns a collection that contains only one [virtualEventRegistration](../resources/virtualeventregistration.md) object in the response body.

## Examples

### Example 1: Retrieve a list of virtual event registrations

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_virtualEventRegistrations",
  "sampleKeys": ["f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualeventregistrations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualeventregistrations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualeventregistrations-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualeventregistrations-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualeventregistrations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualeventregistrations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualeventregistrations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistration)"
}
-->
```http
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
      "externalRegistrationInformation": {
        "referrer": "Fabrikam",
        "registrationId": "myExternalRegistrationId"
      },
      "status": "registered",
      "registrationDateTime": "2023-03-07T22:04:17",
      "cancelationDateTime": null,
      "preferredTimezone":"Pacific Standard Time",
      "preferredLanguage":"en-us",
      "registrationQuestionAnswers": [
        {
          "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
          "displayName": "Which city do you currently work in?",
          "value": null,
          "booleanValue": null,
          "multiChoiceValues": [
            "Seattle"
          ]
        },
        {
          "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
          "displayName": "Do you in the same city where you work?",
          "value": null,
          "booleanValue": true,
          "multiChoiceValues": []
        },
        {
          "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
          "displayName": "Which cities have you worked in?",
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

### Example 2: Retrieve a virtual event registration by user ID

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventregistration-get-byuserid"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations?$filter=userId eq 'b7ef013a-c73c-4ec7-8ccb-e56290f45f68'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualeventregistration-get-byuserid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualeventregistration-get-byuserid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualeventregistration-get-byuserid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventregistration-get-byuserid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualeventregistration-get-byuserid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/virtualeventregistration-get-byuserid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualeventregistration-get-byuserid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistration)"
} -->
```http
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
      "externalRegistrationInformation": {
        "referrer": "Fabrikam",
        "registrationId": "myExternalRegistrationId"
      },
      "status": "registered",
      "registrationDateTime": "2023-03-07T22:04:17",
      "cancelationDateTime": null,
      "preferredTimezone":"Pacific Standard Time",
      "preferredLanguage":"en-us",
      "registrationQuestionAnswers": [
        {
          "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
          "displayName": "Which city do you currently work in?",
          "value": null,
          "booleanValue": null,
          "multiChoiceValues": [
            "Seattle"
          ]
        },
        {
          "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
          "displayName": "Do you in the same city where you work?",
          "value": null,
          "booleanValue": true,
          "multiChoiceValues": []
        },
        {
          "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
          "displayName": "Which cities have you worked in?",
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

### Example 3: Retrieve a virtual event registration by email

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventregistration-get-byemail"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations?$filter=email eq 'EmileeMPham@contoso.com'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualeventregistration-get-byemail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualeventregistration-get-byemail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualeventregistration-get-byemail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventregistration-get-byemail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualeventregistration-get-byemail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/virtualeventregistration-get-byemail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualeventregistration-get-byemail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistration)"
} -->
```http
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
      "externalRegistrationInformation": {
        "referrer": "Fabrikam",
        "registrationId": "myExternalRegistrationId"
      },
      "status": "registered",
      "registrationDateTime": "2023-03-07T22:04:17",
      "cancelationDateTime": null,
      "preferredTimezone":"Pacific Standard Time",
      "preferredLanguage":"en-us",
      "registrationQuestionAnswers": [
        {
          "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
          "displayName": "Which city do you currently work in?",
          "value": null,
          "booleanValue": null,
          "multiChoiceValues": [
            "Seattle"
          ]
        },
        {
          "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
          "displayName": "Do you in the same city where you work?",
          "value": null,
          "booleanValue": true,
          "multiChoiceValues": []
        },
        {
          "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
          "displayName": "Which cities have you worked in?",
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
