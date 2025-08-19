---
title: "List numberAssignments"
description: "Get a list of the numberAssignment objects and their properties."
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List numberAssignments

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-telephonenumbermanagementroot-list-numberassignments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-telephonenumbermanagementroot-list-numberassignments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/teams/telephoneNumberManagement/numberAssignments
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The following optional parameters are supported:

- `$filter`: Use the `$filter` query parameter to retrieve just a subset of a collection. For example, you can use the `$filter` parameter to retrieve those telephone numbers with numberType equals `DirectRouting`. Filter can be applied by appending the following expression to the query `$filter=numberType eq ‘DirectRouting’`. All fields from the number assignments can be filtered except `id` and `city`.

- `$Top`: Use the `$Top` parameter to return first “X” number of results. Default number of results is 500 entries and maximum 1,000 entries allowed per query.

- `$Skip`: Use the `$Skip` query parameter to skip first “X” number of results. Default value is 0

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [numberAssignment](../resources/teamsadministration-numberassignment.md) objects in the response body.

## Examples

### Example 1

#### Request 

The following example shows a request to get a list of all telephone numbers, including assignment details.
<!-- {
  "blockType": "request",
  "name": "get_numberassignment1"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments
```


#### Response


The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OA",
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
  },
    "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OQ",
    "telephoneNumber": "+12052582895",
    "operatorId": "0019adbc-b82a-47b4-a799-4e993a9982f1",
    "numberType": "callingPlan",
    "activationState": "activated",
    "capabilities": [
      "conferenceAssignment"
    ],
    "locationId": null,
    "civicAddressId": null,
    "networkSiteId": null,
    "assignmentTargetId": "207a6836-d031-4764-a9d8-c1193f455f21",
    "assignmentCategory": "primary",
    "portInStatus": null,
    "assignmentStatus": "conferenceAssigned",
    "isoCountryCode": "US",
    "city": "Clanton",
    "numberSource": "online",
    "supportedCustomerActions": [
      "locationUpdate",
       "release"
    ],
    "reverseNumberLookupOptions": []
  }
  
}
```

### Example 2 

#### Request

The following example shows a request to get a list of telephone numbers based on a filter.

<!-- {
  "blockType": "request",
  "name": "get_numberAssignments2",
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments?$filter=assignmentStatus eq 'unassigned' and capabilities/any(c:c eq 'userAssignment')
```


#### Response


The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAzNDU2Nzgy",
    "telephoneNumber": "+1123457",
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
    "assignmentTargetId": null,
    "assignmentCategory": null,
    "portInStatus": null,
    "assignmentStatus": "unassigned",
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

### Example 3 

#### Request


 The following example shows a request to get a list of telephone numbers using `$top` and `$skip` for pagination.
<!-- {
  "blockType": "request",
  "name": "get_numberAssignments3",
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments?$top=100&$skip=200
```

#### Response


The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OA",
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
  },
    "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAyMzQ1Njc4OQ",
    "telephoneNumber": "+12052582895",
    "operatorId": "0019adbc-b82a-47b4-a799-4e993a9982f1",
    "numberType": "callingPlan",
    "activationState": "activated",
    "capabilities": [
      "conferenceAssignment"
    ],
    "locationId": null,
    "civicAddressId": null,
    "networkSiteId": null,
    "assignmentTargetId": "207a6836-d031-4764-a9d8-c1193f455f21",
    "assignmentCategory": "primary",
    "portInStatus": null,
    "assignmentStatus": "conferenceAssigned",
    "isoCountryCode": "US",
    "city": "Clanton",
    "numberSource": "online",
    "supportedCustomerActions": [
      "locationUpdate",
       "release"
    ],
    "reverseNumberLookupOptions": []
  }
  
}
```

### Example 4 

#### Request


 The following example shows a request to get assignment details for a single telephone number using a filter.
<!-- {
  "blockType": "request",
  "name": "get_numberAssignments4",
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments?$filter=telephoneNumber eq '+12052582895'
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.numberAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.numberAssignment",
    "id": "YmMyNjMyZTMtNzUwYy00N2Q3LWFlYWUtOWZlZTAzNWJjMGM3fCsxMjAzNDU2Nzcy",
    "telephoneNumber": "+12052582895",
    "operatorId": "7a205197-8e59-487d-b9fa-3fc1b108f1e5",
    "numberType": "directRouting",
    "activationState": "activated",
    "capabilities": [
        "voiceApplicationAssignment",
        "userAssignment"
    ],
    "locationId": null,
    "civicAddressId": null,
    "networkSiteId": null,
    "assignmentTargetId": null,
    "assignmentCategory": null,
    "portInStatus": null,
    "assignmentStatus": "unassigned",
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
