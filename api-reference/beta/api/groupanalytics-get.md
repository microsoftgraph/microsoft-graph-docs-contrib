---
title: "Get groupAnalytics"
doc_type: apiPageType
description: "Read the properties of a groupAnalytics object that contains point-in-time analytics for a group in a Microsoft Entra tenant."
ms.localizationpriority: medium
author: "Licantrop0"
ms.subservice: "reports"
ms.date: 06/09/2026
---

# Get groupAnalytics

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [groupAnalytics](../resources/groupanalytics.md) object that contains point-in-time analytics for a group in a Microsoft Entra tenant, as part of [identity analytics](../resources/identityanalyticsroot.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "groupanalytics_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/groupanalytics-get-permissions.md)]

[!INCLUDE [rbac-usage-insights-apis](../includes/rbac-for-apis/rbac-usage-insights-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /reports/identityAnalytics/groups/{groupAnalyticsId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [groupAnalytics](../resources/groupanalytics.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_groupanalytics",
  "sampleKeys": ["1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10"]
}-->
```http
GET https://graph.microsoft.com/beta/reports/identityAnalytics/groups/1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupAnalytics"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/identityAnalytics/groups/$entity",
  "id": "1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10",
  "tenantId": "5d6f7a8b-1c2d-3e4f-5a6b-7c8d9e0f1a2b",
  "displayName": "Sales Team",
  "calculatedDateTime": "2026-06-08T00:00:00Z",
  "createdDateTime": "2023-02-15T10:30:00Z",
  "groupType": "isCloudGroup",
  "dynamicMembershipType": "None",
  "isValidGroup": true,
  "isCloudM365Group": true,
  "isCloudDistributionListGroup": false,
  "isCloudMailEnabledSecurityGroup": false,
  "isCloudSecurityGroup": false,
  "isDynamicGroup": false,
  "isOnPremiseDistributionListGroup": false,
  "isOnPremiseMailEnabledSecurityGroup": false,
  "isOnPremiseSecurityGroup": false,
  "directGroupMemberCount": 3,
  "transitiveUserCount": 412,
  "memberTransitiveUserCount": 405,
  "guestTransitiveUserCount": 7,
  "transitiveServicePrincipalCount": 2,
  "assignedRoleCount": 1,
  "sensitivityLabelCount": 1,
  "guestOwnerCount": 0,
  "memberOwnerCount": 2,
  "servicePrincipalOwnerCount": 0
}
```
