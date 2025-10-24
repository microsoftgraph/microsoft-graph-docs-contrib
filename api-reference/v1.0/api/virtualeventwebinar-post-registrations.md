---
title: "Create virtualEventRegistration"
description: "Create a registration record for a webinar registrant."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/22/2024
---

# Create virtualEventRegistration
Namespace: microsoft.graph

Create a [registration record](../resources/virtualeventregistration.md) for a registrant of a [webinar](../resources/virtualeventwebinar.md). This method registers the person for the webinar. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventwebinar_post_registrations" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-post-registrations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/webinars/{webinarId}/registrations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply a JSON representation of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.

You can specify the following properties when you create a **virtualEventRegistration** with delegated permission.

|Property|Type|Description|
|:---|:---|:---|
|externalRegistrationInformation|[virtualEventExternalRegistrationInformation](../resources/virtualeventexternalregistrationinformation.md)| The external information for a virtual event registration. Optional. |
|preferredTimezone|String|The registrant's time zone details. Required. |
|preferredLanguage|String|The registrant's preferred language. Required. |
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|The registrant's answer to the registration questions. Optional. |

You can specify the following properties when you create a **virtualEventRegistration** with application permission.

|Property|Type|Description|
|:---|:---|:---|
|firstName|String|The registrant's first name. Required. |
|lastName|String|The registrant's last name. Required. |
|email|String|The registrant's email address. Required. |
|externalRegistrationInformation|[virtualEventExternalRegistrationInformation](../resources/virtualeventexternalregistrationinformation.md)| The external information for a virtual event registration. Optional. |
|preferredTimezone|String|The registrant's time zone details. Required. |
|preferredLanguage|String|The registrant's preferred language. Required. |
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|The registrant's answer to the registration questions. Optional. |

## Response

If successful, this method returns one of the following results:
* A `201 Created` response code and a [virtualEventRegistration](../resources/virtualeventregistration.md) object for delegated permissions.
* A `204 No Content` response code for application permissions.

## Examples

### Example 1: Creating registration record with delegated permission

Use delegated permission to create a registration record for a person who has a [Microsoft Entra ID](/entra/fundamentals/whatis) as a way to register a Microsoft Entra user to a webinar.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create-virtualeventregistration-delegated",
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations
Content-Type: application/json

{
  "externalRegistrationInformation": {
    "referrer": "Fabrikam",
    "registrationId": "myExternalRegistrationId"
  },
  "preferredTimezone":"Pacific Standard Time",
  "preferredLanguage":"en-us",
  "registrationQuestionAnswers": [
    {
      "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "Seattle"
      ]
    },
    {
      "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
      "value": null,
      "booleanValue": true,
      "multiChoiceValues": []
    },
    {
      "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
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
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-virtualeventregistration-delegated-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-virtualeventregistration-delegated-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-virtualeventregistration-delegated-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventregistration-delegated-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-virtualeventregistration-delegated-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-virtualeventregistration-delegated-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-virtualeventregistration-delegated-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

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
      "displayName": "Do you live in the same city where you work?",
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
```

### Example 2: Creating registration record with application permission

Use application permission to create a registration record for a person who does not have a [Microsoft Entra ID](/entra/fundamentals/whatis) as a way to register an anonymous user for a webinar.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create-virtualeventregistration-application",
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations
Content-Type: application/json

{
  "firstName" : "Diane",
  "lastName" : "Demoss",
  "email" : "DianeDemoss@contoso.com",
  "externalRegistrationInformation": {
    "referrer": "Fabrikam",
    "registrationId": "myExternalRegistrationId"
  },
  "preferredTimezone":"Pacific Standard Time",
  "preferredLanguage":"en-us",
  "registrationQuestionAnswers": [
    {
      "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "Seattle"
      ]
    },
    {
      "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
      "value": null,
      "booleanValue": true,
      "multiChoiceValues": []
    },
    {
      "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "London",
        "New York City"
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-virtualeventregistration-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-virtualeventregistration-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-virtualeventregistration-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventregistration-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-virtualeventregistration-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-virtualeventregistration-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-virtualeventregistration-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
