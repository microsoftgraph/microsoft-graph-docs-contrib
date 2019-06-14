---
title: "List credentialUserRegistrationDetails"
description: "Retrieve a list of credentialuserregistrationdetails objects."
localization_priority: Normal
author: "dkershaw"
ms.prod: "identity and access reports"
doc_type: "apiPageType"
---

# List credentialUserRegistrationDetails

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of credentialuserregistrationdetails objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/credentialUserRegistrationDetails
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters).

| Name | Description |
| ---- | ---- | ------------|
| userDisplayName | Filter by UserName. For example: `/reports/userCredentialUsageDetails?$filter=userDisplayName eq 'ABCD'`. Supported operators: `eq`, `startswith()`, `orderby`. Supports case insensitive. |
| userPrincipalName | Filter by User Principal Name. For example: `/reports/userCredentialUsageDetails?$filter=userPrincipalName eq 'ABCD'`. Supported operators: `eq`, `startswith()`, `orderby`. Supports case insensitive. |
| authMethods | Filter by the authentication methods using during registration. For example: `/reports/userCredentialUsageDetails?$filter=authMethods/any(t:t eq 'email')`. Supported operators: `eq`. |
| isRegistered | Filter for users who have registered for SSPR. For example: `/reports/userCredentialUsageDetails?$filter=isRegistered eq true`. Supported operators: `eq`, `orderby`. |
| isEnabled | Filter for users who have been enabled for SPPR. For example: `/reports/userCredentialUsageDetails?$filter=isEnabled eq true`. Supported operators: `eq`, `orderby`. |
| isCapable | Filter for users who are ready to perform password reset or MFA. For example: `/reports/userCredentialUsageDetails?$filter=isCapable eq true`. Supported operators: `eq`, `orderby` |
| isMfaRegistered | Filter for users who are registered for MFA. For example: `/reports/userCredentialUsageDetails?$filter=isMfaRegistered eq true`. Supported operators: `eq`, `orderby`. |

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_credentialuserregistrationdetails"
}-->

```http
GET https://graph.microsoft.com/beta/reports/credentialUserRegistrationDetails
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.credentialUserRegistrationDetails)",
  "value":[
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "userPrincipalName":"abc@cd.com",
      "userDisplayName": "abc",
      "authMethods": ["email", "mobileSMS"],
      "isRegistered" : false,
      "isEnabled" : true,
      "isCapable" : false,
      "isMfaRegistered" : true
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List credentialUserRegistrationDetails",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->