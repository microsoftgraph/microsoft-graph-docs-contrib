---
title: "Get numberAssignment"
description: "Get details for a list of telephone numbers"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get numberAssignment

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) object. This action retrieves all Microsoft Teams telephone numbers currently available within your tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_numberassignment_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-numberassignment-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /admin/teams/telephoneNumberManagement/numberAssignments/{numberAssignmentId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) object in the response body. The response body contains similar attributes found in Get-CsPhoneNumberAssignment Teams PowerShell cmdlet.

## Examples

### Request

The following request shows how to get assignment details for a single telephone number using the ID. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_numberAssignments",
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OQ
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-numberassignments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-numberassignments-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-numberassignments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-numberassignments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-numberassignments-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-numberassignments-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OQ",
    "telephoneNumber": "+112345",
    "operatorId": "7a205197-8e59-487d-b9fa-3fc1b108f1e5",
    "numberType": "directRouting",
    "activationState": "activated",
    "capabilities": [
      "conferenceAssignment",
        "voiceApplicationAssignment",
        "userAssignment"
    ],
    "locationId": null,
    "civicAddressId": null,
    "networkSiteId": null,
    "assignmentTargetId": "22ed44ab-7759-4649-818e-6af3242dbc5d",
    "assignmentCategory": "primary",
    "portInStatus": null,
    "assignmentStatus": "userAssigned",
    "isoCountryCode": null,
    "city": null,
    "numberSource": "online",
    "supportedCustomerActions": [
      "locationUpdate"
    ],
    "reverseNumberLookupOptions": []
  }  
}
```

