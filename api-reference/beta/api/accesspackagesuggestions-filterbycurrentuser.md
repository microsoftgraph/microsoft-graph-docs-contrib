---
title: "accessPackageSuggestions: filterByCurrentUser"
description: "Retrieve suggested access packages for the current end user based on various criteria including related people insights."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 09/18/2025
---

# accessPackageSuggestions: filterByCurrentUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve suggested [accessPackageSuggestion](../resources/accesspackagesuggestion.md) objects for the current end user. This operation returns access packages that are suggested based on various criteria such as related people insights and the user's assignment history.

The suggestions help end users discover relevant access packages they may need for their role or work context.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagesuggestions_filterbycurrentuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagesuggestions-filterbycurrentuser-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/accessPackageSuggestions/filterByCurrentUser(on={on})
```

## Function parameters

In the request URL, provide the following query parameters with values.

| Parameter    | Type   |Description|
|:-------------|:-------|:----------|
|on|accessPackageSuggestionFilterByCurrentUserOptions|Filter to determine which suggestions to return. The possible values are: `all`, `assignmentHistory`, `relatedPeopleAssignments`, `unknownFutureValue`.|

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageSuggestion](../resources/accesspackagesuggestion.md) objects in the response body.

## Examples

### Example 1: Get all access package suggestions with default insight types

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "accesspackagesuggestions_filterbycurrentuser_all"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageSuggestions/filterByCurrentUser(on='all')?$expand=availableAccessPackage
```


#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageSuggestion)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/accessPackageSuggestions/filterByCurrentUser(on='all')",
  "value": [
    {
      "id": "51b4bd29-cb2d-ef11-8b5f-20c19bd3bce6",
      "reasons": [
        {
          "@odata.type": "#microsoft.graph.accessPackageSuggestionRelatedPeopleBased",
          "relatedPeopleAssignmentCount": 2
        },
        {
          "@odata.type": "#microsoft.graph.accessPackageSuggestionSelfAssignmentHistoryBased",
          "pastAssignmentCount": 2,
          "lastAssignmentDateTime": "2024-08-08T19:13:50.023-07:00"
        }
      ],
      "accessPackage": {
        "id": "51b4bd29-cb2d-ef11-8b5f-20c19bd3bce6",
        "displayName": "ap_discoverable",
        "description": "Discoverable package"
      }
    },
    {
      "id": "fa6338d0-d12d-ef11-8b5f-20c19bd3bce6",
      "reasons": [
        {
          "@odata.type": "#microsoft.graph.accessPackageSuggestionRelatedPeopleBased",
          "relatedPeopleAssignmentCount": 3
        }
      ],
      "accessPackage": {
        "id": "fa6338d0-d12d-ef11-8b5f-20c19bd3bce6",
        "displayName": "ap_allMembers",
        "description": "package with all members"
      }
    }
  ]
}
```

### Example 2: Get access package suggestions based on assignment history

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "accesspackagesuggestions_filterbycurrentuser_history"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageSuggestions/filterByCurrentUser(on='assignmentHistory')?$expand=availableAccessPackage
```


#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageSuggestion)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/accessPackageSuggestions/filterByCurrentUser(on='assignmentHistory')",
  "value": [
    {
      "id": "97ce41d0-fc5c-4e10-a979-1ad18e8242d7",
      "reasons": [
        {
          "@odata.type": "#microsoft.graph.accessPackageSuggestionSelfAssignmentHistoryBased",
          "pastAssignmentCount": 3,
          "lastAssignmentDateTime": "2024-11-28T01:28:15.313Z"
        }
      ],
      "accessPackage": {
        "id": "97ce41d0-fc5c-4e10-a979-1ad18e8242d7",
        "displayName": "ap_allDirectoryUsers",
        "description": "All directory users"
      }
    },
    {
      "id": "8a14d3a6-32d0-4681-bbcc-a307d247ed3c",
      "reasons": [
        {
          "@odata.type": "#microsoft.graph.accessPackageSuggestionSelfAssignmentHistoryBased",
          "pastAssignmentCount": 2,
          "lastAssignmentDateTime": "2024-11-28T01:08:51.667Z"
        }
      ],
      "accessPackage": {
        "id": "8a14d3a6-32d0-4681-bbcc-a307d247ed3c",
        "displayName": "8/1 first",
        "description": "desc"
      }
    }
  ]
}
```