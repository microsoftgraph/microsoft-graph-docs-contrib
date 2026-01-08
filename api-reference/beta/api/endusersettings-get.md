---
title: "Get end user settings"
description: "Read the properties and relationships of the end user settings in Entitlement Management."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 09/18/2025
---

# Get endUserSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [endUserSettings](../resources/endusersettings.md) object that controls the end user experience for access package suggestions and resource discovery.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "endusersettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/endusersettings-get-permissions.md)]

[!INCLUDE [rbac-entitlement-identity-governance-read](../includes/rbac-for-apis/rbac-entitlement-identity-governance-admin-apis-read.md)]


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/controlConfigurations/endUserSettings
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [endUserSettings](../resources/endusersettings.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_endusersettings"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/endUserSettings
```


### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserSettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/controlConfigurations/endUserSettings",
  "relatedPeopleInsightLevel": "countAndNames",
  "showApproverDetailsToMembers": true
}
```